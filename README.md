[![CircleCI](https://circleci.com/gh/mhutton86/project5-operationalize-machine-learning-service.svg?style=svg)](https://circleci.com/gh/mhutton86/project5-operationalize-machine-learning-service)

## Project Overview

This project operationalizes a Machine Learning Microservice API for making predictions within the Boston housing 
market.

A pre-trained, `sklearn` model has been trained to predict housing prices in Boston according to several features, such
as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about 
the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). 

The project has all that's needed to:
- Setup application and environment dependencies
- Build, run, and upload docker container
- Deploy the application docker container into Kubernetes
- Define a CircleCI configuration to continuously build and lint.

## Key Project Files
- `app.py` - Python flask app that serves out predictions (inference) about housing prices through API calls. 
This project could be extended to any pre-trained machine learning model, such as those for image recognition and 
data labeling.
- `Dockerfile` - Docker file for building the boston house price prediction API docker container.
- `Makefile` - This defines the basic tasks used for: Setting up dependencies, building, linting, testing, ...
- `requirements.txt` - This is the python app's library dependencies installed VIA pip.
- `run_docker.sh` - The script for building the API docker image and running it.
- `upload_docker.sh` - The script used to authenticate into docker hub, and upload the API docker image.
- `run_kubernetes.sh` - The script used for deploying the API docker image into a kubernetes cluster.
- `make_prediction.sh` - The script used to make a prediction against the running API.

### Project Tasks

## Setup the Environment
* Run `make first-time` to install the necessary dependencies

### Running API

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Deploying Docker Image
1. Upload docker image to docker hub: `./upload_docker.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl
