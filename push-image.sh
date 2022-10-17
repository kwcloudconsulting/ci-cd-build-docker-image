#!/bin/bash

#fail on any error
set -eu

#login to docker hub
docker login --username $DOCKERHUB_USERNAME --password $DOCKERHUB_PASSWORD

# use the docker tag command to add a tag to your image
docker tag $IMAGE_TAG $DOCKERHUB_USERNAME/$DOCKERHUB_REPONAME

# push the image to docker hub
docker push $DOCKERHUB_USERNAME/$DOCKERHUB_REPONAME
