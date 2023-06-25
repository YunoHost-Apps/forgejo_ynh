## Additional informations

### Known issue about admin access
This package ask during its installation which group of users should be considered as forgejo administrators. These users should be able to access the admin page of forgejo. But they won't :(
Two forgejo features are not yet compatible :
- the reverse proxy authentication (which allows yunohost user to be automatically logged in forgejo)
- the login source (which tells forgejo to check yunohost users base to know if it is an admin or not)

The choice have been done to keep the reverse proxy authentication. But an [issue](https://codeberg.org/forgejo/forgejo/issues/930) is created to have both features.

In conclusion, this forgejo installation does not (yet) allow to access the forgejo admin page.

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

### Remove

To remove the data directory in `/home/yunohost.app/forgejo`, use the `--purge` option:
`sudo yunohost remove forgejo --purge`.

### Uploaded files size
By default, NGINX is configured with a maximum value for uploading files at 200 MB. It's possible to change this value on `/etc/nginx/conf.d/my.domain.tld.d/forgejo.conf`.
```
client_max_body_size 200M;
```
Don't forget to restart Forgejo `sudo systemctl restart forgejo.service`.

> These settings are restored to the default configuration when updating Forgejo. Remember to restore your configuration after all updates.

### Git command access with HTTPS

If you want to use the Git command (like `git clone`, `git pull`, `git push`), you need to set this app as **public**.

