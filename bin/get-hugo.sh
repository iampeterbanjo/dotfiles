#!/usr/bin/env bash

version=0.49
baseUrl="https://github.com/gohugoio/hugo/releases/download/v$version"
file='hugo_'
file+=$version
file+='_Linux-64bit.deb'

. ./bin/help-get-exec.sh

help_get "$baseUrl" "$file"

echo 'done'
