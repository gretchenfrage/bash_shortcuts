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

echo ""

echo "=== git status ==="
git status || exit 1
echo "=================="

echo ""
echo "Would you like to add all, commit, and push to head?"
echo ""
read -p "(y/n) " CONT
if [ "$CONT" = "y" ]; then
  echo "Ok, doing it..."
else
  echo "Cancelling."
  exit 1;
fi
echo ""

echo "Doing the git stuff..."

git add -A * || exit 1
git add .gitignore || true

echo "=== git status, post-stage ==="
git status || exit 1
echo "=============================="

echo ""
echo "Those are the files that are staged."
echo ""
read -p "Are we still good to commit and push (y/n)? " CONT
if [ "$CONT" = "y" ]; then
  echo "Ok, doing it..."
else
  echo "Cancelling."
  exit 1;
fi
echo ""

git commit -m "shortcut  scripted commit rand=${RANDOM}" || exit 1
git push -u origin HEAD || exit 1

echo "done"
