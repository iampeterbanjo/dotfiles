#! /usr/bin/env bash

brew install k3d

CLUSTER_NAME='local-cattle-ranch'

k3d cluster create "$CLUSTER_NAME" --registry-create

# set k8s current context
k3d kubeconfig merge "$CLUSTER_NAME" --kubeconfig-switch-context
kubectl get pods --all-namespaces
