#!/usr/bin/env bash

docker build -t uml:latest .

docker image ls

if [ -z  "$1" ]; then
    echo "You didn't supply a volume for logging."
    SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
    SCRIPT_DIR+="/output_txt_files"
    echo "Using: '"$SCRIPT_DIR"' for logging"

else
    SCRIPT_DIR=$1
fi

echo $SCRIPT_DIR

docker run -it -p 8000:80 -v $SCRIPT_DIR:/code/output_txt_files:rw uml