#!/usr/bin/env bash

# read a shortcut file
# you can use escaped globs, like `\*`, to read several shortcuts

### see: https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

SCRIPT_DIR=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
cd "${SCRIPT_DIR}"

[[ ! -z "${1}" ]] || (
    echo "error: args = [shortcut entry names]"
    exit 1
) || exit 1

NAME="$1"
GLOB="${NAME}.aliases"
#echo "name=${NAME}"
#echo "glob=${GLOB}"

# it may be a glob, for several!
echo ""
for file in ${GLOB}; do
  echo -e "${GREEN}=== shortcut: ${NC}${YELLOW}${file%.aliases}${NC}${GREEN} ===${NC}"
  cat "${file}"
  echo -e "${GREEN}=== end_shct: ${NC}${YELLOW}${file%.aliases}${NC}${GREEN} ===${NC}"
  echo ""
done
