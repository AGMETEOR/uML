#!/bin/bash

# in case of flags
if [ "${1:0:1}" = '-' ]; then
    set -- python3 "$@" app.py
fi

$@