UPDATE login_source
SET
    type=2,
    is_active=true,
    is_sync_enabled=true,
    cfg='{
        "Name": "YunoHost LDAP",
        "Host": "localhost",
        "Port": 389,
        "SecurityProtocol": 0,
        "SkipVerify": false,
        "BindDN": "",
        "BindPassword": "",
        "UserBase": "ou=users,dc=yunohost,dc=org",
        "UserDN": "",
        "AttributeUsername": "uid",
        "AttributeName": "givenName",
        "AttributeSurname": "sn",
        "AttributeMail": "mail",
        "AttributesInBind": false,
        "AttributeSSHPublicKey": "",
        "AttributeAvatar": "",
        "SearchPageSize": 0,
        "Filter": "(&(uid=%s)(permission=cn={{ app }}.main,ou=permission,dc=yunohost,dc=org))",
        "AdminFilter": "(permission=cn={{ app }}.admin,ou=permission,dc=yunohost,dc=org)",
        "RestrictedFilter": "",
        "Enabled": true,
        "AllowDeactivateAll": false,
        "GroupsEnabled": true,
        "GroupDN": "ou=groups,dc=yunohost,dc=org",
        "GroupFilter": "",
        "GroupMemberUID": "memberUid",
        "GroupTeamMap": "{% if group_sync_enabled == 'true' -%}{
                {%- for e in list_group_mapping.splitlines() -%}
                    {%- if loop.index > 1 -%}, {%- endif -%}
                    \"cn={{ e.split('|')[1] }},ou=groups,dc=yunohost,dc=org\": {\"{{ e.split('|')[0] }}\": [\"{{ e.split('|')[1] }}\"]}
                {%- endfor -%}}
            {%- endif %}",
        "GroupTeamMapRemoval": true,
        "UserUID": "uid"
    }',
    updated_unix=(SELECT extract(epoch FROM NOW()))
WHERE name='YunoHost LDAP';
