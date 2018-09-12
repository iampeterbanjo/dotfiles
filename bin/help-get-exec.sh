#!/usr/bin/env bash

help_get() {
  baseUrl=$1
  file=$2
  install=$3
  destination="$HOME/Downloads"
  default_install='/usr/local/bin'

  if [ "$install" != "" ]; then
    echo "installing to $install"
  else
    echo "installing to default $default_install"
    install="$default_install"
  fi

  echo "getting $file"

  wget "$baseUrl/$file" -N -P "$destination"
  downloaded_file="$destination/$file"

  echo "moving $file to $install. Permission required"
  if [[ $file == *.zip ]]; then
    echo "unzipping to $install"
    sudo unzip "$downloaded_file" -d "$install"
  elif [[ $file == *.gz ]]; then
    echo "extracting to $install"
    sudo tar -xvf "$downloaded_file" -C "$install"
  else
    echo "not an archived file"
    sudo mv -v "$downloaded_file" "$install"
  fi
}
