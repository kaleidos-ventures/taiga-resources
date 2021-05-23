# Backing Up Taiga's Docker Installation Using Bind Mounts

## Assumptions
Since we have to reconfigure Taiga to save it's data in a way that makes this process possible we have to start from scratch.

This guide will assume that you're running a fresh server. You already installed docker, docker-compose, cloned the taiga-docker repository, changed into the taiga-docker directory and did a quick `git checkout stable`.

## Overview

This guide will give a little introduction on how backing up the Taiga Docker installation works using Docker bind mounts. While Docker volumes are great for a variety of use cases they burden the sysadmin with complexity that's not always needed in simple enviroments.

## Bind Mounts VS. Volumes

Docker containers can use bind mounts or volumes to store data that is supposed to stay after a container has been removed, stopped or updated. 

With bind mount, a file or directory on the host machine is mounted into a container. The file or directory is referenced by its full or relative path on the host machine. With volumes, a new directory is created within Docker's storage directory on the host machine, and Docker manages that directory's content.

Bind mounts are much easier to backup since they can be zipped on ad-hoc basis, rsynced to a network share regulary using a cronjob or just saved to your desktop via FTP manually before the next big update in case something breaks. 

Docker doesn't provide any command to backup volumes and you have to use temporary containers with a bind mount to create backups. 

If you're interested in backing up and restoring Taiga's out of the box installation using volumes you can read more about the process [here](https://docs.docker.com/storage/volumes/#backup-restore-or-migrate-data-volumes).

If you are in need of a simpler solution keep reading to find out how to backup and restore your Taiga data using bind mounts.

## Configure Taiga To Use Bind Mounts

Open **docker-compose.yml**.

Replace all instances of `localhost` in **docker-compose.yml** with your domain name. Then we'll switch from volume to bind mount configuration. For example

~~~
# Comment the next two lines to use bind mounts
- taiga-static-data:/taiga-back/static
- taiga-media-data:/taiga-back/media
# Decomment the next two lines to use bind mounts
# - ./taiga-bind-mounts/taiga-back/static:/taiga-back/static
# - ./taiga-bind-mounts/taiga-back/media:/taiga-back/media
~~~
becomes
~~~
# Comment the next two lines to use bind mounts
# - taiga-static-data:/taiga-back/static
# - taiga-media-data:/taiga-back/media
# Decomment the next two lines to use bind mounts
- ./taiga-bind-mounts/taiga-back/static:/taiga-back/static
- ./taiga-bind-mounts/taiga-back/media:/taiga-back/media
~~~

Pay attention to the code indentation: The uncommented lines are supposed to have the same indentation as the lines that are about to get commented out.

Repeat the above process for all occurrences of parts in **docker-compose.yml** and **docker-compose-inits.yml** that look like this pattern:

~~~
# Comment the next two lines to use bind mounts
- volumes
# Decomment the next two lines to use bind mounts
# - ./bind mounts
~~~

Inside the **docker-compose.yml** don't forget to comment out the whole last block so

~~~
# Comment the next six lines (the entire volume block) to use bind mounts
volumes:
  taiga-static-data:
  taiga-media-data:
  taiga-db-data:
  taiga-async-rabbitmq-data:
  taiga-events-rabbitmq-data:
~~~
becomes
~~~
# Comment the next six lines (the entire volume block) to use bind mounts
# volumes:
#   taiga-static-data:
#   taiga-media-data:
#   taiga-db-data:
#   taiga-async-rabbitmq-data:
#   taiga-events-rabbitmq-data:
~~~

Open `.gitignore` and change
~~~
db-data
static-data
# Uncomment this block if you want to use docker bind mounts for easier backups
# taiga-bind-mounts/taiga-back
# taiga-bind-mounts/taiga-db
# taiga-bind-mounts/taiga-async-rabbitmq
# taiga-bind-mounts/taiga-events-rabbitmq
~~~
to
~~~
db-data
static-data
# Uncomment this block if you want to use docker bind mounts for easier backups
taiga-bind-mounts/taiga-back
taiga-bind-mounts/taiga-db
taiga-bind-mounts/taiga-async-rabbitmq
taiga-bind-mounts/taiga-events-rabbitmq
~~~
to avoid tracking your Taiga project data with git.

Now we have to do some quick restructuring to make things work. Run

~~~
mkdir taiga-bind-mounts
~~~
to create the directory we'll be using for our persistent data storage. Note that this could be anywhere on your host, even on network shares. This is going to be the single directory you'll have to backup to be able to restore your Taiga data.

If you decide to put this folder somewhere different you'll have to reconfigure **docker-compose.yml** and **docker-compose.inits.yml** accordingly with updatet paths for the **taiga-bind-mounts** directory accordingly. 

Last but not least we'll have to move the gateway config to keep our updated **docker-compose.yml** config working by typing
~~~
mv ./taiga-gateway ./taiga-bind-mounts/taiga-gateway
~~~
Run `./launch-taiga.sh` to initialise the Taiga server using bind mounts. Finally, run `./taiga-manage.sh createsuperuser
` to create your admin user.

If you’re testing it in your own machine, you can access the application in http://localhost:9000.

## Backing Up Taiga

Now thanks to using bind mounts backing up Taiga is as easy as backing up your **taiga-bind-mounts** directory. This could be done in many ways, for example by running
~~~
rsync -ahu --progress taiga-bind-mounts ~/taigabackuptest
~~~
to save a full backup to your home directory.

## Restoring Taiga

Let's asume you borked an update and you want to restore your Taiga projects. Just boot up a new server, clone the taiga-docker git repository using the last working version tag, reconfigure Taiga to use bind mounts using the above guide (minus executing the launch script) and finally put your backup into your empty **taiga-bind-mounts** directory and *then* start the new Taiga server using `./launch-taiga.sh`.

Your project data is now restored and running on a freshly cloned taiga-docker installation.

There are, of course, many ways to restore your backup because we've became very flexible in how to tackle the backup and restore workflow by using bind mounts.