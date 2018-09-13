#!/usr/bin/env bash

sudo apt update
sudo apt install apt-transport-https
sudo sh -c 'curl https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -'
sudo sh -c 'curl https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list'

sudo apt update
sudo apt install dart

if grep -q DART "$HOME/.bashrc"; then
  echo 'No update to PATH'
else
  echo 'Updating PATH'

  echo 'export DART=/usr/lib/dart' >> ~/.bashrc
  echo 'export PATH=$DART/bin:$PATH' >> ~/.bashrc
  echo 'export PATH=$HOME/.pub-cache/bin:$PATH' >> ~/.bashrc

  echo '' >> ~/.bashrc
fi

. ~/.bashrc

DART='/usr/lib/dart'
("$DART/bin/pub" global activate webdev)
("$DART/bin/pub" global activate stagehand)
