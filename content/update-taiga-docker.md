# Updating Taiga's Docker installation

This guide will give a little introduction on how updating the Taiga Docker installation works.

## Check Taiga's versions

Before we do anything we may want to understand how the update process works and what version we're going to update to by executing an update command.

Updating the Docker installation is going to be handled by Docker Compose. To check which version Docker Compose is going to update to open the **docker-compose.yml** file by going to your Taiga directory and using your favorite text editor. If you are unsure how to edit text files in Linux just type  `nano docker-compose.yml` to open it in a beginner friendly text editor.

The image variable in the **docker-compose.yml** file contains the version (tag) you will update to if you run the update commands. To go over a few examples:
~~~
services:
  taiga-db:
    image: postgres:12.3
~~~
will point to the biggest postgres 12.3.X version available. If you check on dockerhub you'll see that there are no "smaller versions" so it will just download 12.3. Some tag are special and point to a specific version, for example
~~~
taiga-front:
    image: taigaio/taiga-front:latest
~~~
`latest` points to the latest version available. If you check again on [Dockerhub](https://hub.docker.com/u/taigaio "Taiga on Dockerhub") you can see that, at the time of writing this guide, `latest`, 6, 6.1 and 6.1.1 all points to the same image, 6.1.1.

## Compability between versions
As for the compatibility, usually updating between minor versions should be fine. Nonetheless, you should always prepare a backup in case anything breaks.

## Regarding Taiga's project data

Taiga data is, by default configuration, saved inside Docker volumes. Docker volumes survive container recreation (and therefore the update process) since they are stored in a directory on your host server instead of inside your Docker containers. If you don’t explicitly create it, Taiga's data volumes are created the first time Taiga's images are mounted into their containers. When a container stops or is removed, the volume still exists. Volumes are only removed when you explicitly remove them.

If you're curious you can open up the **docker-compose.yml** file again and see for yourself that the Database resides in a Docker Volume:

~~~
services:
  taiga-db:
    image: postgres:12.3
    environment:
      POSTGRES_DB: taiga
      POSTGRES_USER: taiga
      POSTGRES_PASSWORD: taiga
    volumes:
      - taiga-db-data:/var/lib/postgresql/data
    networks:
      - taiga
~~~
That taiga-db-data volume is where your "permanent" Taiga data like projects or project settings are stored. You can check Taiga's Docker Compose file to find all volumes. If you don't run any other docker containers on your server a quick `docker volume ls` lists all running docker containers. This is handy to get a quick overview of all Docker volumes.

Example output:
~~~
root@vm02:/var/lib/docker/volumes# docker volume ls
DRIVER    VOLUME NAME
local     taiga-docker_taiga-async-rabbitmq-data
local     taiga-docker_taiga-db-data
local     taiga-docker_taiga-events-rabbitmq-data
local     taiga-docker_taiga-media-data
local     taiga-docker_taiga-static-data
~~~

Docker doesn't provide any command to backup volumes and you have to use temporary containers with a bind mount to create backups. 

If you're interested in backing up and restoring Taiga's out of the box installation using volumes you can read more about the process [here](https://docs.docker.com/storage/volumes/#backup-restore-or-migrate-data-volumes).

Bind mounts are much easier to backup. They enable you to zip your Taiga data on an as-needed basis, rsynced it to a network share regulary using a cronjob or just saved it to your workstation's desktop via FTP manually before the next big update in case something breaks. 

If you are in need of a simpler solution head [here](simple-taiga-backup.md) to find out how to backup and restore your Taiga data using bind mounts.

## Specify target version

Now, for the update part, you can add a specific version tag to your Taiga container, replacing `latest` with the version you need of feel the need to update to. There are many containers on that file so this is just an example`
~~~
taiga-front:
    image: taigaio/taiga-front:latest
~~~
becomes
~~~
 taiga-front:
    image: taigaio/taiga-front:6.1.1
~~~
If you just want to update to the newest version you don't have to change anything inside Taiga's **docker-compose.yml**, just keep the `latest`-tag.

## Update Taiga

To update all the containers you can run `docker-compose pull` and `docker-compose up -d` without arguments. All the containers in the **docker-compose.yml** will be updated to the version pointed to their respective tag.

## Update specific containers only

To update a specific container only, for example taiga-front, run `docker-compose pull taiga-front` and `docker-compose up -d taiga-front` to update only this one. This way you can update containers singularly.

## Post-update cleanup

If you run the command `docker images` afterwards you'll notice that you will have both the new and the old images listed.

Usually you get multiple images when installing a Docker container. You can safely delete those extra images because they're "immutable", none of your modifications will end up there. You will get those after every time you update. By updating Taiga via Docker Compose you are downloading a different (new) one and Docker is not going to delete the old ones without permissions. 

If you're short on disk space and want to keep your footprint small, read up on Docker Prune to learn how to clean these up quick or just use `docker image rm IMAGE-ID` to clean the old ones up one by one.