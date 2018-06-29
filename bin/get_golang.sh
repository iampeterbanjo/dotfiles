#!/usr/bin/env bash

asdf plugin-add golang https://github.com/kennyp/asdf-golang.git
asdf install golang latest
asdf global golang latest

echo 'export GOROOT=$(go env GOROOT)' >> ~/.bashrc
echo 'export GOPATH=$(go env GOPATH)' >> ~/.bashrc
echo 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.bashrc
