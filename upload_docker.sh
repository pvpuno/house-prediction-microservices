#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=pvpuno/predictapp

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath "
docker login --username=pvpuno
docker tag predictapp pvpuno/predictapp:base_api

# Step 3:
# Push image to a docker repository
docker push $dockerpath:base_api