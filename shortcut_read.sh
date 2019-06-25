#!/usr/bin/env bash

# read a shortcut file

SCRIPT_DIR=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
cd "${SCRIPT_DIR}"

[[ ! -z "${1}" ]] || (
    echo "error: args = [shortcut entry names]"
    exit 1
) || exit 1

NAME="${1}"
FILE="${NAME}.aliases"

echo "=== shortcut: ${NAME} ==="
cat "${FILE}"
