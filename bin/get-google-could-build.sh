#!/usr/bin/env bash

# install local version of Google cloud build for
# testing builds locally
# https://cloud.google.com/cloud-build/docs/build-debug-locally

gcloud components install docker-credential-gcr
docker-credential-gcr configure-docker

sudo apt-get install google-cloud-sdk-cloud-build-local
