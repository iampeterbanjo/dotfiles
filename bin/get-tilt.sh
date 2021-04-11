#! /usr/bin/env bash

# requires kubectl, ctlptl, tilt, microk8
# PS: using latest tag doesn't work 2021-04-11

asdf plugin-add kubectl
asdf install kubectl 1.21.0
asdf global kubectl 1.21.0
kubectl version

asdf plugin-add ctlptl
asdf install ctlptl 0.5.1
asdf global ctlptl 0.5.1
ctlptl version

asdf plugin-add tilt
asdf install tilt 0.19.4
asdf global tilt 0.19.4
tilt version

sudo snap install microk8s --classic && \
sudo microk8s.enable dns && \
sudo microk8s.enable registry

sudo microk8s.kubectl config view --flatten > ~/.kube/microk8s-config && \
KUBECONFIG=~/.kube/microk8s-config:~/.kube/config kubectl config view --flatten > ~/.kube/temp-config && \
mv ~/.kube/temp-config ~/.kube/config && \
kubectl config use-context microk8s

sudo usermod -a -G microk8s iampeterbanjo
sudo chown -f -R iampeterbanjo ~/.kube

# set kubernetes context to microk8s
ln -s /var/snap/microk8s/current/credentials/client.config ~/.kube/config

# for small docker images
asdf plugin-add docker-slim
asdf install docker-slim 1.24
asdf global docker-slim 1.24

# check configuration is OK
microk8s status --wait-ready
tilt doctor


