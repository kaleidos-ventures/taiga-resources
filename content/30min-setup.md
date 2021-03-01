---
title: "30min Setup"
date: 2020-10-05T11:22:38+02:00
draft: false
image: "/images/scrumdarkside.jpeg"
thumbnail: "/images/30m.png"
thumbnail_home: "/images/30m.png"
---

This is the easiest and **recommended** way to run Taiga in production. This document explains how to deploy a full Taiga service for a production environment with **docker**.

## Requirements

Prior to start the installation, ensure you have installed:

- **docker**
- **docker-compose**

If you don't have docker installed, please follow installation instructions from docker.com: [https://docs.docker.com/engine/install/](https://docs.docker.com/engine/install/) Additionally, it's necessary to have familiarity with Docker, docker-compose and Docker repositories.

## Getting started

Clone [this repository](https://github.com/taigaio/taiga-docker).

[{{< figure src="/images/dockerrepo.png" caption="Screenshot of Taiga's docker repo" alt="Screenshot of Taiga's docker repo" width="100%" class="articlefigure"  >}}](https://github.com/taigaio/taiga-docker)


```
$ cd taiga-docker/
$ git checkout stable
```

## Start the application

```
$ ./launch-all.sh
```

After some instants, when the application is started you can proceed to create the superuser with the following script:

```
$ ./taiga-manage.sh createsuperuser
```

The `taiga-manage.sh` script lets launch manage.py commands on the
back instance:

```
$ ./taiga-manage.sh [COMMAND]
```

Default access for the application is **http://localhost:9000**.

As **EXTRA**: the default `launch-all.sh` script comes with [penpot](https://penpot.app), the open-source solution for design and prototyping. The default access for the penpot application is **http://locahost:9001**

It's developed by the same team behind Taiga. If you want to give it a try, you can go to [penpot's github](https://github.com/penpot/penpot/tree/develop/docs) to review its own configuration variables.

If you just want to launch Taiga standalone, you can use the `launch-taiga.sh` script instead of the `launch-all.sh`.

## Configuration and Customisation with Environment Variables

This configuration is likely to suit what you need. Edit environment variables in `docker-compose.yml` and `docker-compose-inits.yml`. Have in mind that some of the variables are in both files, and you need to edit both.

**Configuration** variables are in `docker-compose.yml` with default values that we strongly recommend that you change. Those variables are needed to run Taiga. Apart from this configuration, you can have some **customisation** in Taiga, that add features that are disabled by default. Find those variables in **Customisation** section and add the corresponding environment variables whenever you want to enable them.

## Configuration

### Database configuration

These vars will be used to create the database for Taiga and connect to it.

**Important**: these vars should have the same values in `taiga-back` and `taiga-db`.

**Service: taiga-db**
```
POSTGRES_DB: taiga
POSTGRES_USER: taiga
POSTGRES_PASSWORD: taiga
```

**Service: taiga-back**
```
POSTGRES_DB: taiga
POSTGRES_USER: taiga
POSTGRES_PASSWORD: taiga
```

### Taiga Settings

**Service: taiga-back**
```
TAIGA_SECRET_KEY: taiga-back-secret-key
TAIGA_SITES_SCHEME: http
TAIGA_SITES_DOMAIN: localhost:9000
```

**Service: taiga-events**
```
TAIGA_SECRET_KEY: taiga-back-secret-key
```

**Service: taiga-protected**
```
TAIGA_SECRET_KEY: taiga-back-secret-key
```

**Service: taiga-front**
```
TAIGA_URL: "http://localhost:9000"
TAIGA_WEBSOCKETS_URL: "ws://localhost:9000"
```

`TAIGA_SECRET_KEY` is the secret key of Taiga. Should be the same as this var in `taiga-back`, `taiga-events` and `taiga-protected`.

`TAIGA_URL` is where this Taiga instance should be served. It should be the same as `TAIGA_SITES_SCHEME`://`TAIGA_SITES_DOMAIN`.

`TAIGA_WEBSOCKETS_URL` is used to connect to the events. This should have the same value as `TAIGA_SITES_DOMAIN`, ie: ws://taiga.mycompany.com.

> IMPORTANTE NOTICE: When you're configuring Taiga to run with HTTPS, you should configure `TAIGA_URL` with `https` and `TAIGA_WEBSOCKETS_URL` with `wss`.

### Session Settings


Taiga doesn't use session cookies in its API as it stateless. However, the Django Admin (`/admin/`) uses session cookie for authentication. By default, Taiga is configured to work behind HTTPS. If you're using HTTP (despite de strong recommendations against it), you'll need to configure the following environment variables so you can access the Admin:

**Service: taiga-back**
```
SESSION_COOKIE_SECURE: "False"
CSRF_COOKIE_SECURE: "False"
```

More info about those variables can be found [here](https://docs.djangoproject.com/en/3.1/ref/settings/#csrf-cookie-secure).

### Email Settings

By default, email is configured with the *console* backend, which means that the emails will be shown in the stdout. If you have an smtp service, uncomment the "Email settings" section in `docker-compose.yml` and configure those environment variables:

**Service: taiga-back**
```
EMAIL_BACKEND: "django.core.mail.backends.smtp.EmailBackend"
DEFAULT_FROM_EMAIL: "no-reply@example.com"
EMAIL_HOST: "smtp.host.example.com"
EMAIL_PORT: 587
EMAIL_HOST_USER: "user"
EMAIL_HOST_PASSWORD: "password"
EMAIL_USE_TLS: "True"
EMAIL_USE_SSL: "True"
```

Uncomment `EMAIL_BACKEND` variable, but do not modify unless you know what you're doing.

### Telemetry Settings

Telemetry anonymous data is collected in order to learn about the use of Taiga and improve the platform based on real scenarios.

**Service: taiga-back**
```
ENABLE_TELEMETRY: "True"
```

You can opt out by setting this variable to "False". By default is "True".

### Rabbit settings

These variables are used to leave messages in the rabbitmq services. These variables should be the same as in `taiga-back`, `taiga-async`, `taiga-events`, `taiga-async-rabbitmq` and `taiga-events-rabbitmq`.

**Service: taiga-back**
```
RABBITMQ_USER: taiga
RABBITMQ_PASS: taiga
```

**Service: taiga-events**
```
RABBITMQ_USER: taiga
RABBITMQ_PASS: taiga
```

**Service: taiga-async-rabbitmq**
```
RABBITMQ_ERLANG_COOKIE: secret-erlang-cookie
RABBITMQ_DEFAULT_USER: taiga
RABBITMQ_DEFAULT_PASS: taiga
RABBITMQ_DEFAULT_VHOST: taiga
```

**Service: taiga-events-rabbitmq**
```
RABBITMQ_ERLANG_COOKIE: secret-erlang-cookie
RABBITMQ_DEFAULT_USER: taiga
RABBITMQ_DEFAULT_PASS: taiga
RABBITMQ_DEFAULT_VHOST: taiga
```

### Taiga protected settings

**Service: taiga-protected**
```
MAX_AGE: 360
```

The attachments will be accesible with a token during MAX_AGE (in seconds). After that, the token will expire.

## Customisation

All these features are disabled by default. You should add the corresponding environment variables with a proper value to enable them.

### Registration Settings

**Service: taiga-back**
```
PUBLIC_REGISTER_ENABLED: "True"
```

**Service: taiga-front**
```
PUBLIC_REGISTER_ENABLED: "true"
```

If you want to allow a public register, configure this variable to "True". By default is "False". Should be the same as this var in `taiga-front` and `taiga-back`.

**Important**: Taiga (in its default configuration) disables both Gitlab or Github oauth buttons whenever the public registration option hasn't been activated. To be able to use Github/ Gitlab login/registration, make sure you have public registration activated on your Taiga instance.

### Slack Settings

**Service: taiga-back**
```
ENABLE_SLACK: "True"
```

**Service: taiga-front**
```
ENABLE_SLACK: "true"
```

Enable Slack integration in your Taiga instance. By default is "False". Should have the same value as this variable in `taiga-front` and `taiga-back`.

### Github settings

Used for login with Github.
Get these in your profile https://github.com/settings/apps or in your organization profile https://github.com/organizations/{ORGANIZATION-SLUG}/settings/applications

**Note** `ENABLE_GITHUB_AUTH` and `GITHUB_CLIENT_ID` should have the same value in `taiga-back` and `taiga-front` services.

```
ENABLE_GITHUB_AUTH: "True"
GITHUB_API_CLIENT_ID: "github-api-client-id"
GITHUB_API_CLIENT_SECRET: "github-api-client-secret"
```

**Service: taiga-front**
```
ENABLE_GITHUB_AUTH: "true"
GITHUB_API_CLIENT_ID: "github-api-client-id"
```

### Gitlab settings

Used for login with GitLab.
Get these in your profile https://{YOUR-GITLAB}/profile/applications or in your organization profile https://{YOUR-GITLAB}/admin/applications

**Note** `ENABLE_GITLAB_AUTH`, `GITLAB_CLIENT_ID` and `GITLAB_URL` should have the same value in `taiga-back` and `taiga-front` services.

**Service: taiga-back**
```
ENABLE_GITLAB_AUTH: "True"
GITLAB_API_CLIENT_ID: "gitlab-api-client-id"
GITLAB_API_CLIENT_SECRET: "gitlab-api-client-secret"
GITLAB_URL: "gitlab-url"
```

**Service: taiga-front**
```
ENABLE_GITLAB_AUTH: "true"
GITLAB_CLIENT_ID: "gitlab-client-id"
GITLAB_URL: "gitlab-url"
```

### Github Importer

**Service: taiga-back**
```
ENABLE_GITHUB_IMPORTER: "True"
GITHUB_IMPORTER_CLIENT_ID: "client-id-from-github"
GITHUB_IMPORTER_CLIENT_SECRET: "client-secret-from-github"
```

**Service: taiga-front**
```
ENABLE_GITHUB_IMPORTER: "true"
```

### Jira Importer

**Service: taiga-back**
```
ENABLE_JIRA_IMPORTER: "True"
JIRA_IMPORTER_CONSUMER_KEY: "consumer-key-from-jira"
JIRA_IMPORTER_CERT: "cert-from-jira"
JIRA_IMPORTER_PUB_CERT: "pub-cert-from-jira"
```

**Service: taiga-front**
```
ENABLE_JIRA_IMPORTER: "true"
```

### Trello Importer

**Service: taiga-back**
```
ENABLE_TRELLO_IMPORTER: "True"
TRELLO_IMPORTER_API_KEY: "api-key-from-trello"
TRELLO_IMPORTER_SECRET_KEY: "secret-key-from-trello"
```

**Service: taiga-front**
```
ENABLE_TRELLO_IMPORTER: "true"
```

{{< figure src="/images/docker-up.png" caption="What you want to see in the console" alt="What you want to see in the console" width="100%" class="articlefigure"  >}}

## Advanced configuration

In an advanced configuration you ignore the environment variables in **docker-compose.yml** or **docker-compose-inits.yml**.

### Map a config.py file

From [taiga-back](https://github.com/taigaio/taiga-back) download the file **settings/config.py.prod.example** and rename it:

```
mv settings/config.py.prod.example settings/config.py
```

Edit it with your own configuration:

- connection to PostgreSQL
- connection to RabbitMQ for **taiga-events** and **taiga-async**
- credentials for email
- Enable/disable anonymous telemetry
- Enable/disable public registration

Check as well the rest of the configuration if you need to enable some advanced features.

Map the file into **/taiga-back/settings/config.py**. Have in mind that you have to map it both in **docker-compose.yml** and **docker-compose-inits.yml**. You can check the **x-volumes** section in **docker-compose.yml** with an example.

### Map a conf.json file

From [taiga-front](https://github.com/taigaio/taiga-front) download the file **dist/config.example.json** and rename it:

```
mv dist/config.example.json dist/config.json
```

Edit it with your own configuration and map the file into **/taiga-front/dist/config.py**.

## Configure the proxy

Finally, your host configuration needs to make a proxy to **http://localhost:9000**. Example:

```
server {
  server_name taiga.mycompany.com;

  ...

  location / {
    proxy_set_header Host $http_host;
    proxy_set_header X-Real-IP $remote_addr;
    proxy_set_header X-Scheme $scheme;
    proxy_set_header X-Forwarded-Proto $scheme;
    proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
    proxy_redirect off;
    proxy_pass http://localhost:9000/;
  }

  # Events
  location /events {
      proxy_pass http://localhost:9000/events;
      proxy_http_version 1.1;
      proxy_set_header Upgrade $http_upgrade;
      proxy_set_header Connection "upgrade";
      proxy_connect_timeout 7d;
      proxy_send_timeout 7d;
      proxy_read_timeout 7d;
  }
}
```
