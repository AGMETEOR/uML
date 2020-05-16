#!/usr/bin/env bash

docker build -t uml:latest .

docker image ls

docker run -it uml