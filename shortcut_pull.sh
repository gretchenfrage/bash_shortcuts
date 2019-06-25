#!/usr/bin/env bash

# pull from the remote

SCRIPT_DIR=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
cd "${SCRIPT_DIR}"

echo "pulling from git remote"
git pull
