#!/usr/bin/env bash
set -eu

JOB_NAME=$(cat - | jq -r '.JobName')
open "https://ap-northeast-1.console.aws.amazon.com/glue/home?region=ap-northeast-1#editJob:isNewlyCreated=false;jobName=$JOB_NAME"

