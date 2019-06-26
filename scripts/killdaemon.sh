#!/usr/bin/env bash

# kill a system daemon
[[ ! -z "${1}" ]] || (
    echo "error: args = [daemon name]"
    exit 1
) || exit 1

service ${1} stop
