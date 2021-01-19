---
title: "30min Setup"
date: 2020-10-05T11:22:38+02:00
draft: false
image: "/images/30minsetup_test04.jpg"
thumbnail: "/images/30minsetup_test04.jpg"
---

# Introduction

This document explains how to deploy a full Taiga service for a production environment. A Taiga service consists of multiple Taiga modules which altogether make the Taiga platform.

The standard Taiga platform consists of three main modules, 
and each one has its own dependencies both at compile time and runtime:

- **taiga-back** (backend/API)
- **taiga-front-dist** (frontend)
- **taiga-events** (websockets gateway) (optional)

Each module can be run on a unique machine or all of them can be installed to a different machine as well.
In this tutorial we will setup everything on a single machine, and will be installing all three main Taiga modules. +
This type of setup should suffice for small/medium production environments with low traffic.

{{< figure src="/images/30minsetup_test01.jpg" caption="Example of big screenshot" alt="Example of big screenshot" width="100%" class="articlefigure" >}}


# Overview

This tutorial assumes that you are using a clean, recently updated **Ubuntu 16.04** image.

Due to the nature of the frontend, Taiga is accessed through a domain/public IP address, because the frontend application runs in your browser.
The frontend must be able to communicate with the backend/API, therefore both the frontend and the backend must be accessible through a domain/public IP address too.

{{< figure src="/images/30minsetup_test02.jpg" caption="Example of medium screenshot" alt="Example of medium screenshot" width="100%" class="articlefigure" >}}


**Taiga installation must be done with a "regular" user, never with root!**

During the tutorial, the following conditions are assumed:

- **IP:** `80.88.23.45`
- **Hostname:** `example.com` (which points to 80.88.23.45)
- **Username:** `taiga`
- **System memory:** `>=1GB` (needed for compilation of lxml)
- **Working directory:** `/home/taiga/` (default for user `taiga`)

Changing the user from `taiga` to something else is not recommended at any point during deployment unless you're well aware of what you're doing. +
Changing user may result in unexpected behavior or failed deployment!

{{< figure src="/images/30minsetup_test03.jpg" caption="Example of small screenshot" alt="Example of small screenshot" class="articlefigure" >}}


## Dependencies

The typical Taiga setup described in this documentation depends on the following standalone major software installed separately from Taiga:

- https://www.python.org/[Python 3] - programming language and runtime environment of **taiga-back**
- https://www.nginx.com/[NGINX] - web server and reverse proxy
- https://www.postgresql.org[PostgreSQL] - database
- https://gunicorn.org[Gunicorn] - Python WSGI HTTP server
- https://www.rabbitmq.com[RabbitMQ] - message broker
- https://redis.io[Redis] - in-memory key-value database
- https://nodejs.org/en[Node.js] - JavaScript runtime (required if **taiga-events** is present)
- https://virtualenv.pypa.io/[Virtualenv] and https://virtualenvwrapper.readthedocs.io[virtualenvwrapper] - Python virtual environment managers


[NOTE]
This list does not contain libraries and the Python dependencies required by **taiga-back**. For Python dependencies, refer to https://github.com/taigaio/taiga-back/blob/stable/requirements.txt[taiga-back/stable/requirements.txt].

## System Architecture Description

This is a short system architecture description to help you understand the way Taiga is built and works.
Before you go any further in the installation procedure, make sure you read this description to get a high-level overview of the architecture.

Taiga consists of 2 core modules:

- **taiga-back**
- **taiga-front**

**taiga-back** is built with https://www.djangoproject.com[Django] and written in Python 3. This serves the API endpoints for the frontend. +
**taiga-front** is written mostly in https://angularjs.org[AngularJS] and https://coffeescript.org[CoffeeScript]. This consumes the API endpoints provided by the backend.

The Python backend is exposed by gunicorn (port `8001/tcp`), which is a https://en.wikipedia.org/wiki/Web_Server_Gateway_Interface[Python WSGI HTTP server]. The process manager is https://systemd.io[systemd], which runs gunicorn and taiga-back together.
Technically the backend communicates with the https://en.wikipedia.org/wiki/Relational_database[RDBMS], and through the frontend it allows the user to use the features of Taiga.
The communication between the front- and backend is done using REST APIs.

The **backend** is publicly exposed by NGINX which acts as a reverse-proxy in this case. +
The **frontend** is located in the `dist` folder and is also exposed publicly by NGINX which acts as a static webserver in this case.

# Prerequisites

This guide describes a configuration of Taiga which consists of three Taiga modules. Each module has its own dependencies on various packages. +
The following subsections list the required packages and provide instructions on their installation and configuration for a successful Taiga deployment.

## Installing Dependencies

Execute the following commands to install all dependencies for all modules. Optional dependencies are marked with an inline comment, i.e.: `# Optional: taiga-events`.

#### Essential packages:

```
sudo apt-get update
sudo apt-get install -y build-essential binutils-doc autoconf flex bison libjpeg-dev
sudo apt-get install -y libfreetype6-dev zlib1g-dev libzmq3-dev libgdbm-dev libncurses5-dev
sudo apt-get install -y automake libtool curl git tmux gettext
sudo apt-get install -y nginx
sudo apt-get install -y rabbitmq-server redis-server  # Optional: taiga-events or async tasks
```

#### The **taiga-back** module depends on PostgreSQL (>= 9.4) as its database:
```
sudo apt-get install -y postgresql-9.5 postgresql-contrib-9.5
sudo apt-get install -y postgresql-doc-9.5 postgresql-server-dev-9.5
```

#### Python 3 must be installed along with a few third-party libraries:
```
sudo apt-get install -y python3 python3-pip python3-dev virtualenvwrapper
sudo apt-get install -y libxml2-dev libxslt-dev
sudo apt-get install -y libssl-dev libffi-dev
```


> **virtualenvwrapper** helps keeping the system clean of third party libraries, installed
with the language package manager by installing these packages in an isolated virtual environment.

Restart the shell or type `bash` and press `Enter` to reload the shell environment with the new virtualenvwrapper variables and functions.


**This step is mandatory before continuing with the deployment!**


#### Create a user with root privileges named `taiga`:
```
sudo adduser taiga
sudo adduser taiga sudo
sudo su taiga
cd ~
```

> Do **not** change to the root user (`uid=0`) at this point! +
Taiga deployment must be finished with the `taiga` user!

## Configuring Dependencies

#### Configure PostgreSQL with the initial user and database:
```
sudo -u postgres createuser taiga
sudo -u postgres createdb taiga -O taiga --encoding='utf-8' --locale=en_US.utf8 --template=template0
```

#### Create a user named `taiga`, and a virtualhost for RabbitMQ (Optional: taiga-events or async tasks)
```
sudo rabbitmqctl add_user taiga PASSWORD_FOR_EVENTS
sudo rabbitmqctl add_vhost taiga
sudo rabbitmqctl set_permissions -p taiga taiga ".*" ".*" ".*"
```

> As the password will be used inside an URL later, please use only web safe
characters: a-z, A-Z, 0-9, and  - . _ ~

# Backend Setup

This section describes the installation and configuration of the *taiga-back* module which serves the REST API endpoints.

### Download the code:

```
cd ~
git clone https://github.com/taigaio/taiga-back.git taiga-back
cd taiga-back
git checkout stable
```

{{< figure src="/images/30minsetup_test04.jpg" caption="Example of big screenshot" alt="Example of big screenshot" width="100%" class="articlefigure"  >}}