<!--
To README zostało automatycznie wygenerowane przez <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Nie powinno być ono edytowane ręcznie.
-->

# Forgejo dla YunoHost

[![Poziom integracji](https://apps.yunohost.org/badge/integration/forgejo)](https://ci-apps.yunohost.org/ci/apps/forgejo/)
![Status działania](https://apps.yunohost.org/badge/state/forgejo)
![Status utrzymania](https://apps.yunohost.org/badge/maintained/forgejo)

[![Zainstaluj Forgejo z YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=forgejo)

*[Przeczytaj plik README w innym języku.](./ALL_README.md)*

> *Ta aplikacja pozwala na szybką i prostą instalację Forgejo na serwerze YunoHost.*  
> *Jeżeli nie masz YunoHost zapoznaj się z [poradnikiem](https://yunohost.org/install) instalacji.*

## Przegląd

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


**Dostarczona wersja:** 10.0.0~ynh1

## Zrzuty ekranu

![Zrzut ekranu z Forgejo](./doc/screenshots/screenshot.png)

## Dokumentacja i zasoby

- Oficjalna strona aplikacji: <https://forgejo.org>
- Oficjalna dokumentacja: <https://forgejo.org/docs/latest/user/>
- Oficjalna dokumentacja dla administratora: <https://forgejo.org/docs/latest/admin/>
- Repozytorium z kodem źródłowym: <https://codeberg.org/forgejo/forgejo>
- Sklep YunoHost: <https://apps.yunohost.org/app/forgejo>
- Zgłaszanie błędów: <https://github.com/YunoHost-Apps/forgejo_ynh/issues>

## Informacje od twórców

Wyślij swój pull request do [gałęzi `testing`](https://github.com/YunoHost-Apps/forgejo_ynh/tree/testing).

Aby wypróbować gałąź `testing` postępuj zgodnie z instrukcjami:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/forgejo_ynh/tree/testing --debug
lub
sudo yunohost app upgrade forgejo -u https://github.com/YunoHost-Apps/forgejo_ynh/tree/testing --debug
```

**Więcej informacji o tworzeniu paczek aplikacji:** <https://yunohost.org/packaging_apps>
