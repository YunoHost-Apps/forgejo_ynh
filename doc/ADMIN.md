## Additional informations

### User synchronization

In order to allow access to Forgejo admin section, YunoHost users are automaticaly synchronized with Forgejo's.  
You can use «Forgejo (admin)» permission to manage which user is considered as forgejo admin.

The «forgejo (api)» permission must be set to «Visitors» group to allow user synchronization via an API call.

Then, from the forgejo admin interface, click the « synchronize external user data » button to fetch new admins automatically without waiting for the automated daily sync.

### Group synchronization

**TLDR**:

- when you add/remove a member from an existing group that's already synchronized, you need to press *Synchronize external user data* in Forgejo's admin interface, or wait 30 minutes for the changes to propagate
- when you create/remove a Yunohost group or a Forgejo team, you need to press *Force sync group mapping* in Yunohost's Forgejo settings, then *Synchronize external user data* in Forgejo's admin interface

It is possible to synchronize Yunohost groups directly to Forgejo « teams ». Teams are groups within each organization.

Note that the synchronization only applies to existing Forgejo organizations, and only for existing teams which match a Yunohost group name. **Every time you create or remove an organization/team on Forgejo's side, or a group on Yunohost side, you need to press *Synchronize external user data* on Forgejo's admin interface.

Let's take an example with two Forgejo organizations: **cooking** and **sports**.

We would like:

- Yunohost admins (**admins group**) to be members of the `admins` team in both organizations
- Yunohost users members of the **cooks group**, to be part of the « cooks » team in the « cooking » organization on Forgejo
- Yunohost users members of the **sports  group**
  - to be part of the `sportive` team in the **sports organization** on Forgejo
  - to be part fo the `sportive` team in the **cooking organization** on Forgejo

For this purpose:

- make sure `Enable group synchronisation from Yunohost to the organisation team members?` is `yes` and click `Save`
- create **sportive group** and **cooks group** in Yunohost
- create **sports organization** with `admins` and `sportive` teams
- create **cooking organization** with `admins`, `cooks`, and `sportive` teams
- click *Forge sync group mapping* in Yunohost's Forgejo settings
- click *Synchronize external user data* on Forgejo's admin interface

That's it! But please note that Yunohost group membership changes are not reflected instantly on Forgejo. You need to click *Synchronize external user data* in the Forgejo admin interface, or wait 30 minutes minutes for the changes to propagate.

### Notes on SSH usage

If you want to use Forgejo with SSH and be able to pull/push with your SSH key, your SSH daemon must be properly configured to use private/public keys. Here is a sample configuration `/etc/ssh/sshd_config` that works with Forgejo:

```bash
PubkeyAuthentication yes
ChallengeResponseAuthentication no
PasswordAuthentication no
```

You must also add your public key to your Forgejo profile.

When using SSH on any port other than 22, you need to add these lines to your SSH configuration `~/.ssh/config`:

```bash
Host domain.tld
    port 2222 # change this with the port you use
```

### Private Mode

Actually it's possible to access to the Git repositories by the `git` command over HTTP also in private mode installation. It's important to know that in this mode the repository could be ALSO getted if you don't set the repository as private in the repos settings.

### Uploaded files size
By default, NGINX is configured with a maximum value for uploading files at 200 MB. It's possible to change this value on `/etc/nginx/conf.d/my.domain.tld.d/forgejo.conf`.
```
client_max_body_size 200M;
```
Don't forget to restart Forgejo `sudo systemctl restart forgejo.service`.

> These settings are restored to the default configuration when updating Forgejo. Remember to restore your configuration after all updates.

### Git command access with HTTPS

If you want to use the Git command (like `git clone`, `git pull`, `git push`), you need to set this app as **public**.
