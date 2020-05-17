#!/usr/bin/env bash

docker build -t uml:latest .

docker image ls

docker run -it -p 80:80 -v /home/ec2-user/environment/uML/output_txt_files:/code/output_txt_files:rw uml