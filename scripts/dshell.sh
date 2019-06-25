#!/usr/bin/env bash

[[ ! -z "${1}" ]] || (
    echo "error: args = [container name]"
    exit 1
) || exit 1

docker exec -it ${1} /bin/bash
