#!/usr/bin/env bash

# set localhost network delay

[[ ! -z "${1}" ]] || (
    echo "error: args = [millis]"
    exit 1
) || exit 1

sudo tc qdisc add dev lo root netem delay "${1}ms"

