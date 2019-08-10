#!/usr/bin/env bash

[[ ! -z "${1}" ]] || (
    echo "error: args = [name glob, string]"
    exit 1
) || exit 1

[[ ! -z "${2}" ]] || (
    echo "error: args = [name glob, string]"
    exit 1
) || exit 1

find . -type f -name "${1}" -print | xargs grep "${2}"
