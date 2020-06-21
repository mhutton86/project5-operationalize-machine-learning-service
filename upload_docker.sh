#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`
username=mhutton86

# Step 1:
# Create dockerpath
dockerpath=${username}/boston-house-price-prediction

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username ${username}

# Step 3:
# Push image to a docker repository
docker push $dockerpath