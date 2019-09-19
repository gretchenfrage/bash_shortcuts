#!/usr/bin/env bash

export COLUMNS=$( [[ ! -z "$COLUMNS" ]] && (( "$COLUMNS" <= 100 ))  && echo "$COLUMNS" || echo "100" )
#export COLUMNS=$( if (( $COLUMNS <= 100 )); then echo "$COLUMNS"; else echo "100"; fi )

exa -G --across --group-directories-first -F $@
