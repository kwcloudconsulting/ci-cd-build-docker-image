#!/bin/bash

# fail on any error
set -eu

# build the docker image
sudo docker build -f $IMAGE_TAG/Dockerfile -t $IMAGE_TAG .
