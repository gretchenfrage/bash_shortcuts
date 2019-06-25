#!/usr/bin/env bash

# recursive git clone

[[ ! -z "${1}" ]] || (
    echo "error: args = [repository]"
    exit 1
) || exit 1

git clone ${1} --recursive
