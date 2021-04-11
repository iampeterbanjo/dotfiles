#! /usr/bin/env bash

asdf plugin-add kubectl
asdf install kubectl 1.21.0
asdf global kubectl 1.21.0
kubectl version
