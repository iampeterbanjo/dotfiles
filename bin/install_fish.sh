#!/bin/bash

sudo apt-add-repository ppa:fish-shell/release-2
sudo apt-get update
sudo apt-get install fish

# install dependencies
sudo apt install rbenv
sudo apt install direnv
