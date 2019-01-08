#!/usr/bin/env bash

baseUrl='https://github.com/blockstack/blockstack-browser/releases/download/v0.33.2/'
file='Blockstack-for-Linux-v0.33.2.sh'

. ./bin/help-get-exec.sh

help_get "$baseUrl" "$file"

sudo mv -v "/usr/local/bin/$file" /usr/local/bin/Blockstack
sudo chmod +x /usr/local/bin/Blockstack

echo 'done'
