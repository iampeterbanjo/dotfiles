#!/usr/bin/env bash

# run docker without sudo
sudo groupadd docker
sudo usermod -aG docker $USER
