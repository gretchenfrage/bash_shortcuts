#!/usr/bin/env bash

# edit, then prompt to push, a shortcut file

SCRIPT_DIR=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
cd "${SCRIPT_DIR}"

[[ ! -z "${1}" ]] || (
    echo "error: args = [shortcut entry names]"
    exit 1
) || exit 1

NAME="${1}"
FILE="${NAME}.aliases"

echo "editing ${NAME}..."
vim "${FILE}" || exit 1
echo "...done editing ${NAME}"

./shortcut_push.sh
