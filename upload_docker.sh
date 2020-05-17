#!/usr/bin/env bash

dockerpath=$1

docker tag uml $dockerpath:latest

docker push $dockerpath
