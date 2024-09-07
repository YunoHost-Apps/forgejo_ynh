<!--
N.B.: README ini dibuat secara otomatis oleh <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Ini TIDAK boleh diedit dengan tangan.
-->

# Forgejo untuk YunoHost

[![Tingkat integrasi](https://dash.yunohost.org/integration/forgejo.svg)](https://ci-apps.yunohost.org/ci/apps/forgejo/) ![Status kerja](https://ci-apps.yunohost.org/ci/badges/forgejo.status.svg) ![Status pemeliharaan](https://ci-apps.yunohost.org/ci/badges/forgejo.maintain.svg)

[![Pasang Forgejo dengan YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=forgejo)

*[Baca README ini dengan bahasa yang lain.](./ALL_README.md)*

> *Paket ini memperbolehkan Anda untuk memasang Forgejo secara cepat dan mudah pada server YunoHost.*  
> *Bila Anda tidak mempunyai YunoHost, silakan berkonsultasi dengan [panduan](https://yunohost.org/install) untuk mempelajari bagaimana untuk memasangnya.*

## Ringkasan

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


**Versi terkirim:** 8.0.3~ynh1

## Tangkapan Layar

![Tangkapan Layar pada Forgejo](./doc/screenshots/screenshot.png)

## Dokumentasi dan sumber daya

- Website aplikasi resmi: <https://forgejo.org>
- Dokumentasi pengguna resmi: <https://forgejo.org/docs/latest/user/>
- Dokumentasi admin resmi: <https://forgejo.org/docs/latest/admin/>
- Depot kode aplikasi hulu: <https://codeberg.org/forgejo/forgejo>
- Gudang YunoHost: <https://apps.yunohost.org/app/forgejo>
- Laporkan bug: <https://github.com/YunoHost-Apps/forgejo_ynh/issues>

## Info developer

Silakan kirim pull request ke [`testing` branch](https://github.com/YunoHost-Apps/forgejo_ynh/tree/testing).

Untuk mencoba branch `testing`, silakan dilanjutkan seperti:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/forgejo_ynh/tree/testing --debug
atau
sudo yunohost app upgrade forgejo -u https://github.com/YunoHost-Apps/forgejo_ynh/tree/testing --debug
```

**Info lebih lanjut mengenai pemaketan aplikasi:** <https://yunohost.org/packaging_apps>
