<!--
Este archivo README esta generado automaticamente<https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
No se debe editar a mano.
-->

# Forgejo para Yunohost

[![Nivel de integración](https://dash.yunohost.org/integration/forgejo.svg)](https://ci-apps.yunohost.org/ci/apps/forgejo/) ![Estado funcional](https://ci-apps.yunohost.org/ci/badges/forgejo.status.svg) ![Estado En Mantención](https://ci-apps.yunohost.org/ci/badges/forgejo.maintain.svg)

[![Instalar Forgejo con Yunhost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=forgejo)

*[Leer este README en otros idiomas.](./ALL_README.md)*

> *Este paquete le permite instalarForgejo rapidamente y simplement en un servidor YunoHost.*  
> *Si no tiene YunoHost, visita [the guide](https://yunohost.org/install) para aprender como instalarla.*

## Descripción general

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



**Versión actual:** 9.0.1~ynh1

## Capturas

![Captura de Forgejo](./doc/screenshots/screenshot.png)

## Documentaciones y recursos

- Sitio web oficial: <https://forgejo.org>
- Documentación usuario oficial: <https://forgejo.org/docs/latest/user/>
- Documentación administrador oficial: <https://forgejo.org/docs/latest/admin/>
- Repositorio del código fuente oficial de la aplicación : <https://codeberg.org/forgejo/forgejo>
- Catálogo YunoHost: <https://apps.yunohost.org/app/forgejo>
- Reportar un error: <https://github.com/YunoHost-Apps/forgejo_ynh/issues>

## Información para desarrolladores

Por favor enviar sus correcciones a la [rama `testing`](https://github.com/YunoHost-Apps/forgejo_ynh/tree/testing).

Para probar la rama `testing`, sigue asÍ:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/forgejo_ynh/tree/testing --debug
o
sudo yunohost app upgrade forgejo -u https://github.com/YunoHost-Apps/forgejo_ynh/tree/testing --debug
```

**Mas informaciones sobre el empaquetado de aplicaciones:** <https://yunohost.org/packaging_apps>
