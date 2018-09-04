#!/usr/bin/env bash

mkdir -p ~/.fonts/
wget https://github.com/tonsky/FiraCode/raw/master/FiraCode-Regular.otf -O ~/.fonts/FiraCode-Regular.otf
fc-cache -v
