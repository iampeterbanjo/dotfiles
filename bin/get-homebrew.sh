#!/usr/bin/env bash

# install homebrew aka linuxbrew
echo "checking path"
if grep -q HOMEBREW "$HOME/.bashrc"; then
  echo 'No update to PATH'
else
  echo "adding $HOME/linuxbrew/.linuxbrew/bin to path"
  echo '' >> ~/.bashrc
  echo 'export HOMEBREW=/home/linuxbrew/.linuxbrew' >> ~/.bashrc
  echo 'export PATH=$HOMEBREW/bin:$PATH' >> ~/.bashrc
  echo '' >> ~/.bashrc
fi

echo "Enter password at the prompt"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"

/home/linuxbrew/.linuxbrew/bin/brew doctor
