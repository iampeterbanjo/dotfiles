#!/usr/bin/env bash

asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git
version=1.9.2
asdf install elixir "$version"
asdf global elixir "$version"
