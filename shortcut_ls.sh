#!/usr/bin/env bash

# list all the shortcuts

SCRIPT_DIR=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
cd "${SCRIPT_DIR}"

echo "=== shortcuts list ==="
for shortcut in *.aliases; do
    printf '%s\n' "${shortcut%.aliases}"
done
