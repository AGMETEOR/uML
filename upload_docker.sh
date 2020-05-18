#!/usr/bin/env bash

if [ -z "$1"]; then
    echo "Provide a path to your docker repository"
    exit
fi

DOCKERPATH=$1

docker tag uml $DOCKERPATH:latest

docker push $DOCKERPATH
