#!/usr/bin/env bash
set -eu

JOB_RUN=$(cat -)
ID=$(echo "$JOB_RUN" | jq -r '.Id')
LOG_GROUP=$(echo "$JOB_RUN" | jq -r '.LogGroupName')

if [[ "$LOG_GROUP" = "/aws-glue/python-jobs" ]]; then
    URL_BASE_1='https://ap-northeast-1.console.aws.amazon.com/cloudwatch/home?region=ap-northeast-1#logsV2:log-groups/log-group/$252Faws-glue$252Fpython-jobs$252F'
    URL_BASE_2='/log-events/'
    if [[ $1 = '-w' ]] || [[ $1 = '-o' ]]; then
        URL="${URL_BASE_1}output${URL_BASE_2}${ID}"
        open "$URL"
    fi
    if [[ $1 = '-w' ]] || [[ $1 = '-e' ]]; then
        URL="${URL_BASE_1}error${URL_BASE_2}${ID}"
        open "$URL"
    fi
else
    URL_BASE_1='https://ap-northeast-1.console.aws.amazon.com/cloudwatch/home?region=ap-northeast-1#logsV2:log-groups/log-group/$252Faws-glue$252Fjobs$252F'
    URL_BASE_2='$3FlogStreamNameFilter$3D'
    if [[ $1 = '-w' ]] || [[ $1 = '-o' ]]; then
        URL="${URL_BASE_1}output${URL_BASE_2}${ID}"
        open "$URL"
    fi
    if [[ $1 = '-w' ]] || [[ $1 = '-e' ]]; then
        URL="${URL_BASE_1}error${URL_BASE_2}${ID}"
        open "$URL"
    fi
fi

