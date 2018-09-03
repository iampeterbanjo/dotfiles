#!/usr/bin/env bash
CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)"

echo "" >> ~/.bashrc
echo "export CLOUD_SDK_REPO=$CLOUD_SDK_REPO" >> ~/.bashrc
echo "" >> ~/.bashrc
echo "deb http://packages.cloud.google.com/apt $CLOUD_SDK_REPO main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list

curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo apt-get update && sudo apt-get install google-cloud-sdk
sudo apt-get install google-cloud-sdk-app-engine-go google-cloud-sdk-app-engine-python google-cloud-sdk-datastore-emulator
gcloud init
