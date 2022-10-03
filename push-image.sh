#!/bin/bash

#fail on any error
set -eu

#login to docker hub
cat ~/dockerhub_password.txt | docker login --username $DOCKERHUB_USERNAME --password-stdin

# use the docker tag command to add a tag to your image
sudo docker tag interview $DOCKERHUB_USERNAME/interview

# push the image to docker hub
sudo docker push $DOCKERHUB_USERNAME/interview
