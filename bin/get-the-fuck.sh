#!/usr/bin/env bash

sudo apt update
sudo apt install python3-dev python3-pip
sudo pip3 install thefuck
pip install thefuck
echo 'eval $(thefuck --alias)' >> .bashrc
