#!/usr/bin/env bash
set -eu

cat - | sed "s\`^\(.*$1.*\)$\`[$2m\1[0m\`"

