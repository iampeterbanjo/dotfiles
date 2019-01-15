#!/usr/bin/env bash

# scripted version of https://flutter.io/setup-linux/

baseUrl='https://storage.googleapis.com/flutter_infra/releases/beta/linux'
version='flutter_linux_v0.7.3-beta.tar.xz'
destination="$HOME/Downloads"

wget "$baseUrl/$version" -N -P "$destination"
mkdir -p ~/programs
tar -xvf "$destination/$version" -C ~/programs

if grep -q FLUTTER "$HOME/.bashrc"; then
  echo 'No update to PATH'
else
  echo 'Updating PATH'

  echo 'export FLUTTER=$HOME/programs/flutter' >> ~/.bashrc
  echo 'export PATH=$FLUTTER/bin:$PATH' >> ~/.bashrc
  echo '' >> ~/.bashrc
fi

source ~/.bashrc
