#!/usr/bin/env bash

# install vagrant
sudo apt update
sudo apt install virtualbox

version=2.2.4
baseUrl="https://releases.hashicorp.com/vagrant/$version"
file="vagrant_"
file+="$version"
file+="_linux_amd64.zip"

. ./bin/help-get-exec.sh

help_get "$baseUrl" "$file"

echo 'done'

vagrant --version
