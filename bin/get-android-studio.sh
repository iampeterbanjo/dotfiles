#!/usr/bin/env bash

baseUrl='https://dl.google.com/dl/android/studio/ide-zips/3.1.4.0'
version='android-studio-ide-173.4907809-linux.zip'
destination='$HOME/Downloads'

sudo apt install libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386

wget "$baseUrl/$version" -N -P "$destination"
mkdir -p ~/programs
unzip -u "$destination/$version" -d ~/programs

if grep -q ANDROID_STUDIO "$HOME/.bashrc"; then
  echo 'No update to PATH'
else
  echo 'Updating PATH'

  echo 'export ANDROID_STUDIO=$HOME/programs/android-studio' >> ~/.bashrc
  echo 'export PATH=$ANDROID_STUDIO/bin:$PATH' >> ~/.bashrc
  echo '' >> ~/.bashrc
fi

source ~/.bashrc
