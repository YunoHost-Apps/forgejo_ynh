<!--
Nota bene : ce README est automatiquement généré par <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Il NE doit PAS être modifié à la main.
-->

# Forgejo pour YunoHost

[![Niveau d’intégration](https://apps.yunohost.org/badge/integration/forgejo)](https://ci-apps.yunohost.org/ci/apps/forgejo/)
![Statut du fonctionnement](https://apps.yunohost.org/badge/state/forgejo)
![Statut de maintenance](https://apps.yunohost.org/badge/maintained/forgejo)

[![Installer Forgejo avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=forgejo)

*[Lire le README dans d'autres langues.](./ALL_README.md)*

> *Ce package vous permet d’installer Forgejo rapidement et simplement sur un serveur YunoHost.*  
> *Si vous n’avez pas YunoHost, consultez [ce guide](https://yunohost.org/install) pour savoir comment l’installer et en profiter.*

## Vue d’ensemble

Forgejo est une forge logiciel légère auto-hébergée. Facilité d'installation et peu de maintenance, elle fait simplement ce qu'on lui demande.

Présenté par une communauté inclusive sous l'égide de Codeberg e.V., une organisation démocratique à but non lucratif, Forgejo peut être considéré comme étant exclusivement un logiciel libre. Il se concentre sur la sécurité, la mise à l’échelle, la fédération et la confidentialité.

### Fonctionnalités

- Tableau de bord utilisateur, profil et chronologie des activités.
- Gestion des utilisateurs, organisations et dépôts.
- Webhook dépôt et organisation, incluant Slack, Discord et Dingtalk.
- Hooks dépôt Git, clés de déploiement et Git LFS.
- Tickets de dépôt, demandes d'ajout, wiki, branches protégées et collaboration.
- Migration et dépôt mirroir avec wiki hébergé sur un autre hôte.
- Éditeur web pour une édition rapide des fichiers du dépôt et du wiki.
- Rendu Jupyter Notebook et PDF.
- Authentification via SMTP, LDAP.
- Modèle personnalisé HTML, de fichiers statiques et de nombreux autres.


**Version incluse :** 10.0.0~ynh1

## Captures d’écran

![Capture d’écran de Forgejo](./doc/screenshots/screenshot.png)

## Documentations et ressources

- Site officiel de l’app : <https://forgejo.org>
- Documentation officielle utilisateur : <https://forgejo.org/docs/latest/user/>
- Documentation officielle de l’admin : <https://forgejo.org/docs/latest/admin/>
- Dépôt de code officiel de l’app : <https://codeberg.org/forgejo/forgejo>
- YunoHost Store : <https://apps.yunohost.org/app/forgejo>
- Signaler un bug : <https://github.com/YunoHost-Apps/forgejo_ynh/issues>

## Informations pour les développeurs

Merci de faire vos pull request sur la [branche `testing`](https://github.com/YunoHost-Apps/forgejo_ynh/tree/testing).

Pour essayer la branche `testing`, procédez comme suit :

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/forgejo_ynh/tree/testing --debug
ou
sudo yunohost app upgrade forgejo -u https://github.com/YunoHost-Apps/forgejo_ynh/tree/testing --debug
```

**Plus d’infos sur le packaging d’applications :** <https://yunohost.org/packaging_apps>
