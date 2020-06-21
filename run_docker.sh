#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# image name
IMAGE_NAME=mhutton86/boston-house-price-prediction

# Step 1:
# Build image and add a descriptive tag
docker build --tag=${IMAGE_NAME} .

# Step 2: 
# List docker images
docker image ls

# Step 3: 
# Run flask app
docker run -p 8000:80 ${IMAGE_NAME}