#!/usr/bin/env bash

sudo apt-get autoremove automake autoconf
sudo apt-get install automake autoconf

# install erlang
version=21.1.1
asdf plugin-add erlang https://github.com/asdf-vm/asdf-erlang.git
asdf install erlang "$version"
asdf global erlang "$version"
