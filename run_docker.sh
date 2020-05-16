#!/usr/bin/env bash

docker build -t uml:latest .

docker image ls

docker run -it -v /log-data:/log-data -p 80:80 uml