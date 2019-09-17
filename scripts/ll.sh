#!/usr/bin/env bash

export COLUMNS=$( (( $COLUMNS <= 100 )) && echo "$COLUMNS" || echo "100" )
exa -G --across --group-directories-first -F $@
