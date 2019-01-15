#!/usr/bin/env bash

version=4.0.4
baseUrl='https://downloads.mongodb.org/linux'
file="mongodb-shell-linux-x86_64-ubuntu1604-$version.tgz"
install="$HOME/programs"
destination="$HOME/Downloads"

wget "$baseUrl/$file" -N -P "$destination"
downloaded_file="$destination/$file"

mkdir -p $HOME/programs/mongodb-shell

tar -xvf "$downloaded_file" -C $HOME/programs/mongodb-shell --strip-components=1

if grep -q MONGO_SHELL "$HOME/.bashrc"; then
  echo 'No update to PATH'
else
  echo 'Updating PATH'

  echo '' >> ~/.bashrc
  echo 'export MONGO_SHELL=$HOME/programs/mongodb-shell' >> ~/.bashrc
  echo 'export PATH=$MONGO_SHELL:$PATH' >> ~/.bashrc
  echo '' >> ~/.bashrc
fi

echo "done"
