#!/usr/bin/env bash

baseUrl='https://github.com/HelloZeroNet/ZeroBundle/raw/master/dist'
version='ZeroBundle-linux64.tar.gz'
destination='$HOME/Downloads'
install='/usr/local/bin'

echo "getting $version"

wget "$baseUrl/$version" -N -P "$destination"

echo "moving $version to $install. Permission required"
sudo tar -xvf "$destination/$version" -C "$install"

echo "done"
