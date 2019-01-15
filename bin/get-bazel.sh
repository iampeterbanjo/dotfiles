#!/usr/bin/env bash

# https://www.bazel.build/
# Build and test software of any size, quickly and reliably

sudo apt-get install pkg-config zip g++ zlib1g-dev unzip python

version=0.17.2
baseUrl="https://github.com/bazelbuild/bazel/releases/download/$version"
file="bazel-$version-installer-linux-x86_64.sh"

. ./bin/help-get-exec.sh

help_get "$baseUrl" "$file"

echo 'done'
