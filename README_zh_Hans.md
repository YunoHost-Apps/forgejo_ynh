<!--
注意：此 README 由 <https://github.com/YunoHost/apps/tree/master/tools/readme_generator> 自动生成
请勿手动编辑。
-->

# YunoHost 的 Forgejo

[![集成程度](https://dash.yunohost.org/integration/forgejo.svg)](https://dash.yunohost.org/appci/app/forgejo) ![工作状态](https://ci-apps.yunohost.org/ci/badges/forgejo.status.svg) ![维护状态](https://ci-apps.yunohost.org/ci/badges/forgejo.maintain.svg)

[![使用 YunoHost 安装 Forgejo](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=forgejo)

*[阅读此 README 的其它语言版本。](./ALL_README.md)*

> *通过此软件包，您可以在 YunoHost 服务器上快速、简单地安装 Forgejo。*  
> *如果您还没有 YunoHost，请参阅[指南](https://yunohost.org/install)了解如何安装它。*

## 概况

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


**分发版本：** 1.21.11-1~ynh1

## 截图

![Forgejo 的截图](./doc/screenshots/screenshot.png)

## 文档与资源

- 官方应用网站： <https://forgejo.org>
- 官方用户文档： <https://forgejo.org/docs/latest/user/>
- 官方管理文档： <https://forgejo.org/docs/latest/admin/>
- 上游应用代码库： <https://codeberg.org/forgejo/forgejo>
- YunoHost 商店： <https://apps.yunohost.org/app/forgejo>
- 报告 bug： <https://github.com/YunoHost-Apps/forgejo_ynh/issues>

## 开发者信息

请向 [`testing` 分支](https://github.com/YunoHost-Apps/forgejo_ynh/tree/testing) 发送拉取请求。

如要尝试 `testing` 分支，请这样操作：

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/forgejo_ynh/tree/testing --debug
或
sudo yunohost app upgrade forgejo -u https://github.com/YunoHost-Apps/forgejo_ynh/tree/testing --debug
```

**有关应用打包的更多信息：** <https://yunohost.org/packaging_apps>
