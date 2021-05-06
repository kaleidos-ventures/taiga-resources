#!/bin/sh

# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.
#
# Copyright (c) 2021-present Kaleidos Ventures SL

USER=kaleidos
HOST=taiga6
DIR=taiga-resources/   # the directory where your web site files should go

hugo -b 'https://taiga-resources.kaleidos.net' && rsync -avz --delete public/ ${USER}@${HOST}:~/${DIR}

exit 0
