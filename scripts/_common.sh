#!/bin/bash

#=================================================
# SET ALL CONSTANTS
#=================================================

function set_forgejo_login_source() {
    ynh_print_info "Creating forgejo login source"
    pushd "$install_dir"
	ynh_exec_as_app ./forgejo admin auth add-ldap-simple --security-protocol "Unencrypted" --name "YunoHost LDAP" --host "localhost" --port "389" --skip-tls-verify --user-search-base "ou=users,dc=yunohost,dc=org" --user-dn "uid=%s,ou=Users,dc=yunohost,dc=org" --user-filter "(&(objectclass=posixAccount)(uid=%s)(permission=cn=$app.main,ou=permission,dc=yunohost,dc=org))" --admin-filter "(permission=cn=forgejo.admin,ou=permission,dc=yunohost,dc=org)" --username-attribute "uid" --firstname-attribute "givenName" --surname-attribute "sn" --email-attribute "mail"
    popd
}

function enable_login_source_sync() {
    ynh_print_info "Set forgejo login source as synchronizable"
    # Enable login source synchronisation manualy because forgejo command does not allow it (https://codeberg.org/forgejo/forgejo/issues/952)
    ynh_psql_db_shell  "$db_name" --sql "update login_source set is_sync_enabled = true where type = 5 and name = 'YunoHost LDAP'"
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

        ynh_psql_db_shell  "$db_name" --sql "update public.user set login_source = (select id from login_source where name = 'YunoHost LDAP' and type = 5), login_name = name, login_type = 5 where name = '${username}'"
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
