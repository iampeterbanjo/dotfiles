#!/usr/bin/env bash

# Install Jenkins from Debian packages
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
echo "deb https://pkg.jenkins.io/debian-stable binary/" | sudo tee -a /etc/apt/sources.list.d/jenkins.list
sudo apt-get update
sudo apt-get install jenkins
