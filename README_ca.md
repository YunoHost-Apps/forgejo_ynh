<!--
N.B.: Aquest README ha estat generat automàticament per <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
NO s'ha de modificar manualment.
-->

# Forgejo per YunoHost

[![Nivell d'integració](https://apps.yunohost.org/badge/integration/forgejo)](https://ci-apps.yunohost.org/ci/apps/forgejo/)
![Estat de funcionament](https://apps.yunohost.org/badge/state/forgejo)
![Estat de manteniment](https://apps.yunohost.org/badge/maintained/forgejo)

[![Instal·la Forgejo amb YunoHosth](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=forgejo)

*[Llegeix aquest README en altres idiomes.](./ALL_README.md)*

> *Aquest paquet et permet instal·lar Forgejo de forma ràpida i senzilla en un servidor YunoHost.*  
> *Si no tens YunoHost, consulta [la guia](https://yunohost.org/install) per saber com instal·lar-lo.*

## Visió general

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


**Versió inclosa:** 10.0.3~ynh1

## Captures de pantalla

![Captures de pantalla de Forgejo](./doc/screenshots/screenshot.png)

## Documentació i recursos

- Lloc web oficial de l'aplicació: <https://forgejo.org>
- Documentació oficial per l'usuari: <https://forgejo.org/docs/latest/user/>
- Documentació oficial per l'administrador: <https://forgejo.org/docs/latest/admin/>
- Repositori oficial del codi de l'aplicació: <https://codeberg.org/forgejo/forgejo>
- Botiga YunoHost: <https://apps.yunohost.org/app/forgejo>
- Reportar un error: <https://github.com/YunoHost-Apps/forgejo_ynh/issues>

## Informació per a desenvolupadors

Envieu les pull request a la [branca `testing`](https://github.com/YunoHost-Apps/forgejo_ynh/tree/testing).

Per provar la branca `testing`, procedir com descrit a continuació:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/forgejo_ynh/tree/testing --debug
o
sudo yunohost app upgrade forgejo -u https://github.com/YunoHost-Apps/forgejo_ynh/tree/testing --debug
```

**Més informació sobre l'empaquetatge d'aplicacions:** <https://yunohost.org/packaging_apps>
