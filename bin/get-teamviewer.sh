#!/usr/bin/env bash

baseUrl='https://download.teamviewer.com/download/linux/'
file='teamviewer_amd64.deb'

. ./bin/help-get-exec.sh

help_get "$baseUrl" "$file"

echo 'done'
