#!/bin/sh

# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.
#
# Copyright (c) 2021-present Kaleidos Ventures SL

current_branch=`git rev-parse --abbrev-ref HEAD`

git fetch \
  && git checkout main \
  && git merge --ff-only origin/stable \
  && git push origin main \
  && git checkout stable \
  && git merge --ff-only origin/main \
  && git push origin stable \
  && echo -e "The code has been merged to STABLE \033[1;32msuccessfully\033[0m" \
  || echo -e "There has been an \033[1;31error\033[0m"

git checkout $current_branch
