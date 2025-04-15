#!/bin/bash

#=================================================
# COMMON VARIABLES AND CUSTOM HELPERS
#=================================================

ssh_port="$(yunohost settings get security.ssh.ssh_port)"

function set_forgejo_login_source() {
    ynh_print_info "Creating forgejo login source"
    pushd "$install_dir"
    if ! ynh_exec_as_app ./forgejo admin auth list | grep -qF 'YunoHost LDAP'; then
        ynh_exec_as_app ./forgejo admin auth add-ldap --name "YunoHost LDAP" \
            --host "localhost" --port "389" --security-protocol "Unencrypted" \
            --user-search-base 'ou=users,dc=yunohost,dc=org' \
            --user-filter '()' --email-attribute 'mail'

    fi
    popd

    # Update all LDAP settings

    local list_group_mapping=''
    local sql_request
    local ynh_group_list
    local org_name
    local team_name
    local include_entry
    local group_mapping_found
    if "$group_sync_enabled"; then
        org_team_list="$(sudo --login --user=postgres psql -qAt "$db_name" <<< \
            "SELECT json_agg(json_build_object(
                'org_name', public.user.name,
                'team_name', public.team.lower_name))
            FROM public.user INNER JOIN public.team ON public.user.id = team.org_id" \
            | jq -r '.[]| join("|")')"
        ynh_group_list=$(yunohost --output-as json user group list | jq -r '.groups | keys | .[]')

        while read -r e; do
            org_name="$(echo "$e" | cut -d'|' -f1)"
            team_name="$(echo "$e" | cut -d'|' -f2)"
            include_entry=false
            group_mapping_found=false
            while read -r g; do
                if [ "$g" == "$team_name" ]; then
                    group_mapping_found=true
                fi
            done <<< "$ynh_group_list"
            if ! $group_mapping_found; then
                continue
            fi

            if [ -n "$group_sync_included_organisations" ]; then
                while read -r -d, name; do
                    if [ "$org_name" == "$name" ]; then
                        include_entry=true
                    fi
                done <<< "$group_sync_included_organisations"
            else
                include_entry=true
                while read -r -d, name; do
                    if [ "$org_name" == "$name" ]; then
                        include_entry=false
                    fi
                done <<< "$group_sync_excluded_organisations"
            fi
            if ! $include_entry; then
                continue
            fi

            include_entry=false
            if [ -n "$group_sync_included_ynh_group" ]; then
                while read -r -d, name; do
                    if [ "$team_name" == "$name" ]; then
                        include_entry=true
                    fi
                done <<< "$group_sync_included_ynh_group"
            else
                include_entry=true
                while read -r -d, name; do
                    if [ "$team_name" == "$name" ]; then
                        include_entry=false
                    fi
                done <<< "$group_sync_excluded_ynh_group"
            fi
            if ! $include_entry; then
                continue
            fi

            list_group_mapping+="$e
"
        done <<< "$org_team_list"
    fi

    sql_request=$(mktemp)
    ynh_config_add --jinja --template=login_source.sql --destination="$sql_request"

    ynh_psql_db_shell < "$sql_request"
}

function create_forgejo_api_user() {
    ynh_print_info "Creating forgejo api user"
    forgejo_api_user=yunohost_api
    forgejo_api_pwd=$(ynh_string_random --length=24)
    ynh_app_setting_set --key=forgejo_api_user --value="$forgejo_api_user"
    ynh_app_setting_set --key=forgejo_api_pwd --value="$forgejo_api_pwd"
    pushd "$install_dir"
    ynh_exec_as_app ./forgejo admin user create --username "$forgejo_api_user" --password "$forgejo_api_pwd" --email "admin@${domain}" --admin --must-change-password=false
    forgejo_api_token=$(ynh_exec_as_app ./forgejo admin user generate-access-token --username "$forgejo_api_user" --token-name "admin" --scopes "write:admin" --raw | tail -1)
    ynh_app_setting_set --key=forgejo_api_token --value="$forgejo_api_token"
    popd
}

function set_users_login_source() {
    # Previously created users have «Local» login source. It should be «YunoHost LDAP»
    for username in $(ynh_user_list); do
        ynh_print_info "Updating forgejo user login type for ${username}"

        ynh_psql_db_shell  "$db_name" <<< "update public.user set login_source = (select id from login_source where name = 'YunoHost LDAP' and type = 5), login_name = name, login_type = 5 where name = '${username}';"
    done
}

function synchronize_users() {
    ynh_print_info "Synchronizing forgejo users"
    # Fetch the token independently such that it's redacted by Yunohost logging mechanism
    forgejo_api_token=$(ynh_app_setting_get --key=forgejo_api_token)

    # Remove trailing slash from path
    local no_trailing_slash_path=${path%/}

    # User synchronization must be launched using API : no cli exists for this purpose (https://codeberg.org/forgejo/forgejo/issues/953)
    curl --url "https://${domain}${no_trailing_slash_path}/api/v1/admin/cron/sync_external_users" -X POST -H "Authorization: token $forgejo_api_token" -kfsS
}

ensure_vars_set() {
    ynh_app_setting_set_default --app="$app" --key=register_email_confirm --value=false
    ynh_app_setting_set_default --app="$app" --key=register_manual_confirm --value=false
    ynh_app_setting_set_default --app="$app" --key=disable_registration --value=true
    ynh_app_setting_set_default --app="$app" --key=require_signin_view --value=false
    ynh_app_setting_set_default --app="$app" --key=enable_notify_mail --value=true
    ynh_app_setting_set_default --app="$app" --key=show_registration_button --value=true

    ynh_app_setting_set_default --app="$app" --key=mirror_enabled --value=true
    ynh_app_setting_set_default --app="$app" --key=mirror_disable_new_pull --value=false
    ynh_app_setting_set_default --app="$app" --key=mirror_disable_new_push --value=false
    ynh_app_setting_set_default --app="$app" --key=mirror_default_interval --value=8h
    ynh_app_setting_set_default --app="$app" --key=mirror_min_interval --value=10m

    ynh_app_setting_set_default --app="$app" --key=group_sync_enabled --value=false
    ynh_app_setting_set_default --app="$app" --key=group_sync_excluded_organisations --value=''
    ynh_app_setting_set_default --app="$app" --key=group_sync_included_organisations --value=''
    ynh_app_setting_set_default --app="$app" --key=group_sync_excluded_ynh_group --value=''
    ynh_app_setting_set_default --app="$app" --key=group_sync_included_ynh_group --value=''
}

set_permissions() {
    chown -R "$app:$app" "$install_dir"
    chmod -R u=rwX,g=rX,o= "$install_dir"
    chmod -R u=rwX,g=,o= "$install_dir/.ssh"

    chown "$app:$app" -R /var/log/"$app"
    chmod 750 -R /var/log/"$app"

    chown -R "$app:$app" "$data_dir"
    chmod u=rwx,g=rx,o= "$data_dir"
    find "$data_dir" \(   \! -perm -o= \
                     -o \! -user "$app" \
                     -o \! -group "$app" \) \
                   -exec chown "$app:$app" {} \; \
                   -exec chmod u=rwX,g=rX,o= {} \;

}
