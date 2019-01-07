#!/usr/bin/env bash

# set desktop background scaling options
# centered | zoom | scale | tiled

gsettings set org.gnome.desktop.background picture-options $1
