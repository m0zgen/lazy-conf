#!/bin/bash
# Upload this lib to git
# Created by Yevgeniy Goncharov, http://sys-adm.in

if [[ -z $1 ]]; then
  echo "Please add commit comment!"
else
  git add .
  git commit -m "$1"
  git push origin master
fi