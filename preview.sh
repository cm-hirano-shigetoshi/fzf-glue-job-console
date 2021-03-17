#!/usr/bin/env bash
set -eu

INPUT=$(cat -)
JOB_NAME=$(echo "$INPUT" | jq -r '.JobName')
echo "$INPUT" | jq -C .
aws glue get-job --job-name $JOB_NAME | jq -C .

