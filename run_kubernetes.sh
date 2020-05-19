#!/usr/bin/env bash

# Create a deployment with nodeport service using yaml
# Exposed node port is 30001
kubectl apply -f k8s/deployments.yml -f k8s/services.yml

# List pods in our deployment
kubectl get pods
