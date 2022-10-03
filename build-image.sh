#!/bin/bash

# fail on any error
set -eu

# build the docker image
sudo docker build -t interview .
