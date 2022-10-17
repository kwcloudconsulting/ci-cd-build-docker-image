#!/bin/bash

#fail on any error
set -eu

#login to docker hub
sudo docker login --username $DOCKERHUB_USERNAME --password $DOCKERHUB_PASSWORD

# use the docker tag command to add a tag to your image
sudo docker tag $IMAGE_TAG $DOCKERHUB_USERNAME/$DOCKERHUB_REPONAME

# push the image to docker hub
sudo docker push $DOCKERHUB_USERNAME/$DOCKERHUB_REPONAME
