#!/usr/bin/env bash

# Install exercism.io
version=3.0.13
baseUrl="https://github.com/exercism/cli/releases/download/v$version"
file="exercism-$version-linux-x86_64.tar.gz"

. ./bin/help-get-exec.sh

help_get "$baseUrl" "$file"

echo 'done'
