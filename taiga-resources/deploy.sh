#!/bin/sh
USER=kaleidos
HOST=taiga6
DIR=taiga-resources/   # the directory where your web site files should go

hugo -b 'https://taiga-resources.kaleidos.net' && rsync -avz --delete public/ ${USER}@${HOST}:~/${DIR}

exit 0