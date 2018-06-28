#!/bin/bash
git_install () {
  sudo add-apt-repository ppa:git-core/ppa -y
  sudo apt-get update
  sudo apt-get install git
  sudo apt-get install git-extras
}
