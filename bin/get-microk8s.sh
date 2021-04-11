#! /usr/bin/env bash

sudo snap install microk8s --classic && \
sudo microk8s.enable dns && \
sudo microk8s.enable registry

# set microk8s as kubernetes current-context
sudo microk8s.kubectl config view --flatten > ~/.kube/microk8s-config && \
KUBECONFIG=~/.kube/microk8s-config:~/.kube/config kubectl config view --flatten > ~/.kube/temp-config && \
mv ~/.kube/temp-config ~/.kube/config && \
kubectl config use-context microk8s

sudo usermod -a -G microk8s iampeterbanjo
sudo chown -f -R iampeterbanjo ~/.kube

microk8s status --wait-ready
