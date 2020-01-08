#!/usr/bin/env bash

# add dependencies first
brew install rbenv direnv

# get fish config
mv ~/.config/fish ~/.config/fish_backup
cd ~/.config/
git clone git@bitbucket.org:iampeterbanjo/fish.git
