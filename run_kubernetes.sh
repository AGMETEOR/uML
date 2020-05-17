#!/usr/bin/env bash

dockerpath=$1

kubectl create deployment kubeuml --image=$1:latest

kubectl get pods

kubectl delete service kubeuml

kubectl expose deployment kubeuml --type=LoadBalancer --port=80

# Step 4:
# Forward the container port to a host

