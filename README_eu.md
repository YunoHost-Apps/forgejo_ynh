<!--
Ohart ongi: README hau automatikoki sortu da <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>ri esker
EZ editatu eskuz.
-->

# Forgejo YunoHost-erako

[![Integrazio maila](https://dash.yunohost.org/integration/forgejo.svg)](https://ci-apps.yunohost.org/ci/apps/forgejo/) ![Funtzionamendu egoera](https://ci-apps.yunohost.org/ci/badges/forgejo.status.svg) ![Mantentze egoera](https://ci-apps.yunohost.org/ci/badges/forgejo.maintain.svg)

[![Instalatu Forgejo YunoHost-ekin](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=forgejo)

*[Irakurri README hau beste hizkuntzatan.](./ALL_README.md)*

> *Pakete honek Forgejo YunoHost zerbitzari batean azkar eta zailtasunik gabe instalatzea ahalbidetzen dizu.*  
> *YunoHost ez baduzu, kontsultatu [gida](https://yunohost.org/install) nola instalatu ikasteko.*

## Aurreikuspena

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


**Paketatutako bertsioa:** 9.0.0~ynh1

## Pantaila-argazkiak

![Forgejo(r)en pantaila-argazkia](./doc/screenshots/screenshot.png)

## Dokumentazioa eta baliabideak

- Aplikazioaren webgune ofiziala: <https://forgejo.org>
- Erabiltzaileen dokumentazio ofiziala: <https://forgejo.org/docs/latest/user/>
- Administratzaileen dokumentazio ofiziala: <https://forgejo.org/docs/latest/admin/>
- Jatorrizko aplikazioaren kode-gordailua: <https://codeberg.org/forgejo/forgejo>
- YunoHost Denda: <https://apps.yunohost.org/app/forgejo>
- Eman errore baten berri: <https://github.com/YunoHost-Apps/forgejo_ynh/issues>

## Garatzaileentzako informazioa

Bidali `pull request`a [`testing` abarrera](https://github.com/YunoHost-Apps/forgejo_ynh/tree/testing).

`testing` abarra probatzeko, ondorengoa egin:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/forgejo_ynh/tree/testing --debug
edo
sudo yunohost app upgrade forgejo -u https://github.com/YunoHost-Apps/forgejo_ynh/tree/testing --debug
```

**Informazio gehiago aplikazioaren paketatzeari buruz:** <https://yunohost.org/packaging_apps>
