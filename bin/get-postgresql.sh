#!/usr/bin/env bash

# install postgresql db
sudo apt-get update
sudo apt-get install postgresql postgresql-contrib

echo 'postgresql installed'
echo 'create a new user'

sudo -u postgres createuser --interactive
