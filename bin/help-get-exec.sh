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

  echo "$file download done"

  if [[ $file == *.zip ]]; then
    echo "unzipping to $install"
    read -p "Are you sure? " -n 1 -r
    echo    # (optional) move to a new line
    if [[ $REPLY =~ ^[Yy]$ ]]
    then
      sudo unzip "$downloaded_file" -d "$install"
    fi
  elif [ $file == *.gz ] || [ $file == *.tgz ]; then
    echo "extracting to $install"
    read -p "Are you sure? " -n 1 -r
    echo    # (optional) move to a new line
    if [[ $REPLY =~ ^[Yy]$ ]]
    then
      sudo tar -xvf "$downloaded_file" -C "$install"
    fi
  elif [[ $file == *.deb ]]; then
    echo "installing deb package"
    read -p "Are you sure? " -n 1 -r
    echo    # (optional) move to a new line
    if [[ $REPLY =~ ^[Yy]$ ]]
    then
      sudo dpkg -i "$downloaded_file"
    fi
  elif [[ $file == *.sh ]]; then
    echo "make $downloaded_file executable and run"
    read -p "Are you sure? " -n 1 -r
    echo    # (optional) move to a new line
    if [[ $REPLY =~ ^[Yy]$ ]]
    then
      chmod +x "$downloaded_file"
      bash "$downloaded_file"
    fi
  else
    echo "moving $downloaded_file to $install"
    read -p "Are you sure? " -n 1 -r
    echo    # (optional) move to a new line
    if [[ $REPLY =~ ^[Yy]$ ]]
    then
      sudo mv -v "$downloaded_file" "$install"
    fi
  fi
}
