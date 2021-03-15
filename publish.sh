#!/bin/sh

current_branch=`git rev-parse --abbrev-ref HEAD`

git fetch \
  && git checkout master \
  && git merge --ff-only origin/stable \
  && git push origin master \
  && git checkout stable \
  && git merge --ff-only origin/master \
  && git push origin stable \
  && echo -e "The code has been merged to STABLE \033[1;32msuccessfully\033[0m" \
  || echo -e "There has been an \033[1;31error\033[0m"

git checkout $current_branch
