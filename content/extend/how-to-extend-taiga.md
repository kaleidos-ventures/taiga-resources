---
title: "How To Extend Taiga"
date: 2020-10-05T11:27:09+02:00
draft: false
categories:
  - "extend taiga"
thumbnail: "images/extend-taiga.png"
thumbnail_home: "images/contributions.png"
---

Taiga offers lots of features and [customisation options]({{< ref "/categories/customisation" >}}) that cover many different use cases and users. On top of that, Taiga is easily extensible in many ways, and you can work with Taiga information to add extra functionalities to your projects.

## API

From the beginning, Taiga has aimed to be beautiful as well as useful for developers, so it has a very curated public API, feature complete and well documented. Thanks to this API, you can connect Taiga with other tools in your organization, create your own interfaces and easily automate processes.

taiga-php and taiga-python are both excellent examples of how the API enables new ways of using Taiga, and both are community driven:

- [taiga-php](https://github.com/TZK-/TaigaPHP) is a wrapper made in PHP to handle the Taiga API.
- [python-taiga](https://github.com/nephila/python-taiga) is a library, written in Python, to interact with the API.

You can check all the [community contributions]({{< ref "contributions" >}}) which add functionalities over Taiga's.

> The complete API is available at: [https://taigaio.github.io/taiga-doc/dist/api.html](https://taigaio.github.io/taiga-doc/dist/api.html)

## CSV reports

Each project in Taiga has the option to generate CSVs from the _Admin_ panel. Thanks to these CSVs, it's very straightforward to use the data in spreadsheets to generate custom reports. Taiga offers raw data in CSV so many applications can operate with the data.

You can check this [detailed tutorial]({{< ref "csv-reports.md" >}}) and [this video](https://www.youtube.com/watch?v=tdt7nqXVf_E) where you can have an idea of what you can achieve thanks to this reports.

## Webhooks

Outgoing webhooks send notifications to external services. For example, you can notify the creation of a new sprint, or follow the workflow of issues, tasks and userstories in any of your organization's tools. The external service needs to be ready to process the data in the notification. If you have a customisable reporting system, you could create reports based on the Taiga's notifications.

Currently, Taiga notifies the following events:

- a sprint is created, updated or deleted
- a user story is created, updated or deleted
- a task is created, updated or deleted
- an issue is created, updated or deleted
- a wiki page is created, updated or deleted

Check the documentation to see the [detailed payload](https://taigaio.github.io/taiga-doc/dist/webhooks.html) for each notification.

## Integrations

Taiga is able to connect with other applications to have more functionalities. Some of these integrations come directly with Taiga, others are community driven, and you can develop your own integration to fit in what your organization needs.

### Chats

In Taiga you can easily configure and customise which events do you want to notify to a Slack channel. Thus, your team will be always up to date to the project status and its advance.

No matter if you're using [Taiga.io](https://taiga.io) or a self-hosted instance, you can use the Slack integration.

Check the detailed documentation about installing and [configuring Slack](https://taigaio.github.io/taiga-doc/dist/integrations-slack.html)

### Repositories

Repository integrations are the perfect way to merge product workflow with development workflow. For instance, you can centralise issues of all your repositories in a Taiga project, so you can coordinate better efforts and priorities.

Currently Taiga offers, out of the box, integration with the main control version systems:

- [Github](https://taigaio.github.io/taiga-doc/dist/integrations-github.html)
- [Gitlab](https://taigaio.github.io/taiga-doc/dist/integrations-gitlab.html)
- [Bitbucket](https://taigaio.github.io/taiga-doc/dist/integrations-bitbucket.html)
- [Gogs](https://taigaio.github.io/taiga-doc/dist/integrations-gogs.html)

### Authorization

Taiga comes with a complete user system, but it's possible as well configure other authentication systemc. You can use Taiga in your organization and your users authenticate with a centralised system. This is achieved thanks to plugins, some of them provided by Taiga and others provided by the community.

Taiga offers plugins to authenticate with widely used systems as Github and Gitlab. In [Taiga.io](https://taiga.io) you can use directly both of them. If you'd like to use them in your self-hosted instance, check the corresponding documentation to install and configure:

- [Github](https://github.com/taigaio/taiga-contrib-github-auth)
- [Gitlab](https://github.com/taigaio/taiga-contrib-gitlab-auth)

Aside from the Taiga provided plugins, the community have developed and shared other authentication systems, as LDAP o Kerberos. You can check the complete list in our page of [community contributions]({{< ref "contributions" >}}).

## Deployments

Being open source, Taiga is easily installed in your own self-hosted instances. Taiga offers to official ways to install Taiga:

- Docker is the recommended way to install Taiga. It's a widely used technology, developer friendly and ready to be deployed in any cloud. It also comes with the main plugins and integrations ready to go. Check the official documentation on [how to install Taiga with Docker](https://taigaio.github.io/taiga-doc/dist/setup-production.html#setup-prod-with-docker).
- You can always install Taiga from source code, installing all the different components. This is way to install Taiga if you have your own plugins or integrations. Check the official documentation on [how to install Taiga from source code](https://taigaio.github.io/taiga-doc/dist/setup-production.html#setup-prod-from-source-code).

And on top of these, the community has shared other systems to deploy Taiga, based mainly on Ansible or Docker. You can check the complete list in our page of [community contributions]({{< ref "contributions" >}}). You can always develop your own recipes to deploy Taiga.

## Import / Export projects

Taiga import/export feature allows you to extract all your data from one Taiga instance and move it to another one. You can start working on a self-hosted instance and decide you'd like to migrate to Taiga.io, or viceversa. You can even move project between different Taiga self-hosted instances.

Check our tutorials on how to [import and export projects]({{< ref "import-export-projects.md" >}})

### Importers

If you're enjoying Taiga, you can always migrate your projects from other platforms to Taiga and keep working with all its features. Taiga offers importers for some project mangement tools, like Trello or Jira. If you'd like to migrate your organization's projects to Taiga, [let us know](support@taiga.io)!

Check our documentation on how to import projects from other platforms:

- Import from [Trello]({{< ref "importer-trello.md" >}})
- Import from [Jira]({{< ref "importer-jira.md" >}})
- Import from [Github]({{< ref "importer-github.md" >}})
- Import from [Asana]({{< ref "importer-asana.md" >}})


If you're using Taiga self-hosted, check the documentation on how to [configure different importers](https://taigaio.github.io/taiga-doc/dist/#importers).
