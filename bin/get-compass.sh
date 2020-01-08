#!/usr/bin/env bash

# https://www.mongodb.com/download-center/compass
# install mongodb compass

version=1.20.3
baseUrl="https://downloads.mongodb.com/compass/"
file="mongodb-compass_$version"
file+="_amd64.deb"

. ./bin/help-get-exec.sh

help_get "$baseUrl" "$file"

echo 'done'
