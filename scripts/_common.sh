#!/bin/bash

#=================================================
# SET ALL CONSTANTS
#=================================================

function set_forgejo_login_source() {
    pushd "$install_dir"
	ynh_exec_as $app ./forgejo admin auth add-ldap-simple --security-protocol "Unencrypted" --name "YunoHost LDAP" --host "localhost" --port "389" --skip-tls-verify --user-search-base "ou=users,dc=yunohost,dc=org" --user-dn "uid=%s,ou=Users,dc=yunohost,dc=org" --user-filter "(&(objectclass=posixAccount)(uid=%s)(permission=cn=$app.main,ou=permission,dc=yunohost,dc=org))" --admin-filter "(permission=cn=forgejo.admin,ou=permission,dc=yunohost,dc=org)" --username-attribute "uid" --firstname-attribute "givenName" --surname-attribute "sn" --email-attribute "mail"
    popd
}