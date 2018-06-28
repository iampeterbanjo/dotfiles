#!/bin/bash

asdf plugin-add golang https://github.com/kennyp/asdf-golang.git
asdf install golang 1.8.6
asdf global golang 1.8.6

echo 'export GOROOT=$(go env GOROOT)' >> ~/.bashrc
echo 'export GOPATH=$(go env GOPATH)' >> ~/.bashrc
echo 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.bashrc
