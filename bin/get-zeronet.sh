#!/usr/bin/env bash

baseUrl='https://github.com/HelloZeroNet/ZeroBundle/raw/master/dist'
file='ZeroBundle-linux64.tar.gz'
install="$HOME/programs"

. ./bin/help-get-exec.sh

help_get "$baseUrl" "$file" "$install"

if grep -q ZERONET "$HOME/.bashrc"; then
  echo 'No update to PATH'
else
  echo 'Updating PATH'

  echo 'export ZERONET=$HOME/programs/ZeroBundle' >> ~/.bashrc
  echo 'export PATH=$ZERONET:$PATH' >> ~/.bashrc
  echo '' >> ~/.bashrc
fi

echo "done"
