#!/usr/bin/env bash

version=2.6.4
asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git
asdf install ruby "$version"
asdf global ruby "$version"
