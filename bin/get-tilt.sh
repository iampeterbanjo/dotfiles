#! /usr/bin/env bash

# requires kubectl, ctlptl, tilt, microk8
# PS: using latest tag doesn't work 2021-04-11

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
