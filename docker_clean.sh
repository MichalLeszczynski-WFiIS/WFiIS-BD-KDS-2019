#!/bin/bash

DOCKER_IMAGE=katalog-dziel-sztuki

docker container stop $(docker container ls |grep $DOCKER_IMAGE| cut -d" " -f1)
docker container rm $(docker container ls -a|grep $DOCKER_IMAGE| cut -d" " -f1)
docker image rm $(docker image ls | grep $DOCKER_IMAGE | awk '{print $3}')