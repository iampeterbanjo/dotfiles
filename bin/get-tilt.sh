#! /usr/bin/env bash

# requires kubectl, ctlptl, tilt and kubernetes cluster e.g. microk8 or k3d
cd "$(dirname "$0")"

bash ./get-kubectl.sh

bash ./get-ctlptl.sh

# bash ./get-microk8s.sh
bash ./get-k3d.sh

bash ./get-docker-slim.sh

asdf plugin-add tilt
asdf install tilt 0.19.4
asdf global tilt 0.19.4
tilt version

# check configuration is OK
tilt doctor
