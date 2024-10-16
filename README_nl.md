<!--
NB: Deze README is automatisch gegenereerd door <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Hij mag NIET handmatig aangepast worden.
-->

# Forgejo voor Yunohost

[![Integratieniveau](https://dash.yunohost.org/integration/forgejo.svg)](https://ci-apps.yunohost.org/ci/apps/forgejo/) ![Mate van functioneren](https://ci-apps.yunohost.org/ci/badges/forgejo.status.svg) ![Onderhoudsstatus](https://ci-apps.yunohost.org/ci/badges/forgejo.maintain.svg)

[![Forgejo met Yunohost installeren](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=forgejo)

*[Deze README in een andere taal lezen.](./ALL_README.md)*

> *Met dit pakket kun je Forgejo snel en eenvoudig op een YunoHost-server installeren.*  
> *Als je nog geen YunoHost hebt, lees dan [de installatiehandleiding](https://yunohost.org/install), om te zien hoe je 'm installeert.*

## Overzicht

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


**Geleverde versie:** 9.0.0~ynh1

## Schermafdrukken

![Schermafdrukken van Forgejo](./doc/screenshots/screenshot.png)

## Documentatie en bronnen

- Officiele website van de app: <https://forgejo.org>
- Officiele gebruikersdocumentatie: <https://forgejo.org/docs/latest/user/>
- Officiele beheerdersdocumentatie: <https://forgejo.org/docs/latest/admin/>
- Upstream app codedepot: <https://codeberg.org/forgejo/forgejo>
- YunoHost-store: <https://apps.yunohost.org/app/forgejo>
- Meld een bug: <https://github.com/YunoHost-Apps/forgejo_ynh/issues>

## Ontwikkelaarsinformatie

Stuur je pull request alsjeblieft naar de [`testing`-branch](https://github.com/YunoHost-Apps/forgejo_ynh/tree/testing).

Om de `testing`-branch uit te proberen, ga als volgt te werk:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/forgejo_ynh/tree/testing --debug
of
sudo yunohost app upgrade forgejo -u https://github.com/YunoHost-Apps/forgejo_ynh/tree/testing --debug
```

**Verdere informatie over app-packaging:** <https://yunohost.org/packaging_apps>
