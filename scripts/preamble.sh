#!/usr/bin/env bash

# print preamble for Rust GitHub issue messages

OUTPUT="On current $(git rev-parse --abbrev-ref HEAD) (\`$(git rev-parse HEAD)\`) with Rust $(rustc --version | cut -d' ' -f2 | cut -d'.' -f1,2) (\`$(rustc --version)\`, \`$(cargo --version)\`), "
echo -n "${OUTPUT}"
echo -n "${OUTPUT}" | xclip
