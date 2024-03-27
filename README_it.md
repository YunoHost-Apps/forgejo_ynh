<!--
N.B.: Questo README è stato automaticamente generato da <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
NON DEVE essere modificato manualmente.
-->

# Forgejo per YunoHost

[![Livello di integrazione](https://dash.yunohost.org/integration/forgejo.svg)](https://dash.yunohost.org/appci/app/forgejo) ![Stato di funzionamento](https://ci-apps.yunohost.org/ci/badges/forgejo.status.svg) ![Stato di manutenzione](https://ci-apps.yunohost.org/ci/badges/forgejo.maintain.svg)

[![Installa Forgejo con YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=forgejo)

*[Leggi questo README in altre lingue.](./ALL_README.md)*

> *Questo pacchetto ti permette di installare Forgejo su un server YunoHost in modo semplice e veloce.*  
> *Se non hai YunoHost, consulta [la guida](https://yunohost.org/install) per imparare a installarlo.*

## Panoramica

Forgejo is a self-hosted lightweight software forge. Easy to install and low maintenance, it just does the job.

Brought to you by an inclusive community under the umbrella of Codeberg e.V., a democratic non-profit organization, Forgejo can be trusted to be exclusively Free Software. It focuses on security, scaling, federation and privacy. 

### Features

- User dashboard, user profile and activity timeline.
- User, organization and repository management.
- Repository and organization webhooks, including Slack, Discord and Dingtalk.
- Repository Git hooks, deploy keys and Git LFS.
- Repository issues, pull requests, wiki, protected branches and collaboration.
- Migrate and mirror repositories with wiki from other code hosts.
- Web editor for quick editing repository files and wiki.
- Jupyter Notebook and PDF rendering.
- Authentication via SMTP, LDAP.
- Customize HTML templates, static files and many others.


**Versione pubblicata:** 1.21.8-0~ynh1

## Screenshot

![Screenshot di Forgejo](./doc/screenshots/screenshot.png)

## Documentazione e risorse

- Sito web ufficiale dell’app: <https://forgejo.org>
- Documentazione ufficiale per gli utenti: <https://forgejo.org/docs/latest/user/>
- Documentazione ufficiale per gli amministratori: <https://forgejo.org/docs/latest/admin/>
- Repository upstream del codice dell’app: <https://codeberg.org/forgejo/forgejo>
- Store di YunoHost: <https://apps.yunohost.org/app/forgejo>
- Segnala un problema: <https://github.com/YunoHost-Apps/forgejo_ynh/issues>

## Informazioni per sviluppatori

Si prega di inviare la tua pull request alla [branch di `testing`](https://github.com/YunoHost-Apps/forgejo_ynh/tree/testing).

Per provare la branch di `testing`, si prega di procedere in questo modo:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/forgejo_ynh/tree/testing --debug
o
sudo yunohost app upgrade forgejo -u https://github.com/YunoHost-Apps/forgejo_ynh/tree/testing --debug
```

**Maggiori informazioni riguardo il pacchetto di quest’app:** <https://yunohost.org/packaging_apps>
