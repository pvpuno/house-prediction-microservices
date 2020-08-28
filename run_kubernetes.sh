#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=pvpuno/predictapp


# Step 2
# Run the Docker Hub container with kubernetes
kubectl run predictapp --image=$dockerpath:base_api --port=80 --labels app=predictapp

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward --address 0.0.0.0 pod/predictapp 8000:80 --pod-running-timeout=1m0s