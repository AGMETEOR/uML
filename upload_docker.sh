#!/usr/bin/env bash

dockerpath="agmeteor/uml"

docker tag "$1" agmeteor/uml $dockerpath

docker push $dockerpath
