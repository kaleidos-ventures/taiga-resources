---
title: "30min Setup"
date: 2020-10-05T11:22:38+02:00
draft: false
image: "/images/30minsetup_test04.jpg"
thumbnail: "/images/30minsetup_test04.jpg"
---

This is the easiest and **recommended** way to run Taiga in production.
This document explains how to deploy a full Taiga service for a production environment with **docker**.

### Requirements and caveats

Prior to start the installation, ensure you have installed:

- **docker**
- **docker-compose**

Additionally, it's necessary to have familiarity with Docker, docker-compose and Docker repositories.

### Get repository

Clone [this repository](https://github.com/taigaio/taiga-docker).
```
$ cd taiga-docker/
$ git checkout stable
```

### Configuration

There are two options to configurate taiga-docker, a simple and a complex configuration:

#### Simple configuration:

This configuration is likely to suit what you need. Edit environment variables in **docker-compose.yml**.

##### taiga-db

This service is for configuring the database.

`POSTGRES_DB`, `POSTGRES_USER`, `POSTGRES_PASSWORD` vars will be used to create the database for Taiga.

---

These vars should have the same values as **taiga-back** vars.

---

##### taiga-back and taiga-async

This services are for the REST API endpoints and the async tasks respectively.

###### Database settings:

`POSTGRES_DB`, `POSTGRES_USER`, `POSTGRES_PASSWORD` will be used to connect to the Taiga database.

---

These vars should have the same values as **taiga-db** service vars.

---

`POSTGRES_HOST` is where the database is set. By default, it's meant to be in the same host as the database service so it uses internal docker names.

###### Taiga settings:

`TAIGA_SECRET_KEY` is the secret key of Taiga. Should be the same as this var in **taiga-events** and **taiga-async**.
Besides, this should have the same value of `SECRET_KEY` in **taiga-protected**.

`TAIGA_SITES_SCHEME`, `TAIGA_SITES_DOMAIN` should have the url where this is served: https[://]taiga.mycompany.com

###### Registration Settings:

`PUBLIC_REGISTER_ENABLED` to allow a public register when you configure this variable to "True". By default is "False".
Should be the same as this var in **taiga-front**.

###### Telemetry Settings:

Telemetry anonymous data is collected in order to learn about the use of Taiga and improve the platform based on real scenarios.
`ENABLE_TELEMETRY` could be opt out by setting this variable to "False". By default is "True".

###### Email Settings:

By default, email is configured with the console backend, which means that the emails will be shown in the stdout.
If you have an smtp service, uncomment the "Email settings" section in **docker-compose.yml** and configure those environment variables:

`DEFAULT_FROM_EMAIL`, `EMAIL_HOST`, `EMAIL_PORT`, `EMAIL_HOST_USER`, `EMAIL_HOST_PASSWORD`, `EMAIL_USE_TLS`, `EMAIL_USE_SSL`.
Uncomment `EMAIL_BACKEND` variable, but do not modify unless you know what you're doing.

###### Rabbit settings:

`RABBITMQ_USER`, `RABBITMQ_PASS` are used to leave messages in the rabbitmq services. Those variables should be the same as in **taiga-async-rabbitmq** and **taiga-events-rabbitmq**.

###### Github settings:

`GITHUB_API_CLIENT_ID`, `GITHUB_API_CLIENT_SECRET` used for login with Github.
Get these in your profile https://github.com/settings/apps or in your organization profile https://github.com/organizations/{ORGANIZATION-SLUG}/settings/applications

###### Gitlab settings:

`GITLAB_API_CLIENT_ID`, `GITLAB_API_CLIENT_SECRET`, `GITLAB_URL` used for login with GitLab.
Get these in your profile https://{YOUR-GITLAB}/profile/applications or in your organization profile https://{YOUR-GITLAB}/admin/applications

###### Importers:

It's possible to configure different platforms to import projects from them. Make sure that `ENABLE_XXXX_IMPORTER` envvar is configured in both taiga-back (x-environment) and taiga-front. In taiga-back environment variables, it's also necessary to configure different settings depending on the importer.


##### taiga-async-rabbitmq

Configure this service to generate messages from rabbitmq for **taiga-async**.

`RABBITMQ_ERLANG_COOKIE` is the secret erlang cookie.

`RABBITMQ_DEFAULT_USER`, `RABBITMQ_DEFAULT_PASS`, `RABBITMQ_DEFAULT_VHOST` will be used to connect to rabbitmq.


##### taiga-front

This service is for configuring the frontend application.

###### Taiga settings:

`TAIGA_URL` is where this Taiga instance should be served. It should be the same as `TAIGA_SITES_SCHEME`://`TAIGA_SITES_DOMAIN`.

`TAIGA_WEBSOCKETS_URL` to connect to the events. This should have the same value as `TAIGA_SITES_DOMAIN`, ie: ws://taiga.mycompany.com

###### Registration Settings:

`PUBLIC_REGISTER_ENABLED` to allow a public register, configure this variable to "true". By default is "false".
Should be the same as this var in **taiga-back**.

###### Github settings:

`GITHUB_CLIENT_ID` used for login with Github.
Get these in your profile https://github.com/settings/apps or in your organization profile https://github.com/organizations/{ORGANIZATION-SLUG}/settings/applications

###### Gitlab settings:

`GITLAB_CLIENT_ID`, `GITLAB_URL` used for login with GitLab.
Get these in your profile https://{YOUR-GITLAB}/profile/applications or in your organization profile https://{YOUR-GITLAB}/admin/applications

###### Importers:

It's possible to configure different platforms to import projects from them. Make sure that `ENABLE_XXXX_IMPORTER` envvar is configured in both **taiga-back** (x-environment) and **taiga-front**.


##### taiga-protected

Configure this service and protects the attachments from external downloads.

`SECRET_KEY` should be the same as this var in **taiga-back**.

`MAX_AGE` variable does that the attachments will be accesible with a token during a maximum (in seconds). After that, the token will expire.


##### taiga-events

Configure this service for Taiga websocket server which allows taiga-front to show realtime changes in the backlog, taskboard, kanban and issues listing.

`RABBITMQ_USER`, `RABBITMQ_PASS` are used to read messages from rabbitmq.

`TAIGA_SECRET_KEY` should be the same as this var in **taiga-back**.


##### taiga-events-rabbitmq

Configure this service to generate messages from rabbitmq for **taiga-events**.

`RABBITMQ_ERLANG_COOKIE` is the secret erlang cookie.

`RABBITMQ_DEFAULT_USER`, `RABBITMQ_DEFAULT_PASS`, `RABBITMQ_DEFAULT_VHOST` vars will be used to connect to rabbitmq.


#### Complex configuration:

In a complex configuration you ignore the environment variables in **docker-compose.yml**.

##### Map a config.py file

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

Map the file into **/taiga-back/settings/config.py**. You can check the **x-volumes** section in **docker-compose.yml** with an example.

##### Map a conf.json file

From [taiga-front](https://github.com/taigaio/taiga-front) download the file **dist/config.example.json** and rename it:

```
mv dist/config.example.json dist/config.json
```

Edit it with your own configuration and map the file into **/taiga-front/dist/config.py**.

### Configure an admin user

```
$ docker-compose up -d

$ docker-compose -f docker-compose.yml -f docker-compose-inits.yml run --rm taiga-manage createsuperuser
```

### Up and running

Once everything has been installed, launch all the services and check the result:

```
$ docker-compose up -d
```

Go to **http://localhost:9000** and check your Taiga Platform is available.

### Configure the proxy

Your host configuration needs to make a proxy to **http://localhost:9000**. Example:

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
}
```
