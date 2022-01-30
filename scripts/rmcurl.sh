#!/usr/bin/env bash

# use: rmcurl "link to PDF" "name for file" "directory to insert into"

mkdir rmapi-tmp || exit 1
(
    curl "${1}" > "rmapi-tmp/${2}.pdf" || exit 1
    echo -e "put \"rmapi-tmp/${2}.pdf\" \"${3}\"\nexit\n" | ./rmapi -ni || exit 1
) || true
rm -r rmapi-tmp || exit 1
