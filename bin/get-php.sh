#!/usr/bin/env bash

# install php plugin and deps using asdf

# install deps
sudo apt install curl build-essential libjpeg-dev libpng-dev openssl libcurl4-openssl-dev pkg-config libedit-dev zlib1g-dev libicu-dev libxml2-dev gettext bison libmysqlclient-dev libpq-dev libzip-dev

asdf plugin-add php https://github.com/odarriba/asdf-php.git
asdf list-all php | fzf | xargs -0 asdf install php
