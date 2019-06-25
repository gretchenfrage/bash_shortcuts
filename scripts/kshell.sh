#!/usr/bin/env bash

[[ ! -z "${1}" ]] || (
    echo "error: args = [pod name]"
    exit 1
) || exit 1

kubectl exec -it ${1} /bin/bash
