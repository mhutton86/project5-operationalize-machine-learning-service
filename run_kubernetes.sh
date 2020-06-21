#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

username=mhutton86
dockername=boston-house-price-prediction

# Step 1:
# This is your Docker ID/path
dockerpath=${username}/${dockername}

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run ${dockername}\
    --generator=run-pod/v1\
    --image=$dockerpath\
    --port=80 --labels app=${dockername}

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward ${dockername} 8000:80