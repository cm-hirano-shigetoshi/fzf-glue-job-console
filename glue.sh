#!/usr/bin/env bash
set -eu

TOOL_DIR=$(dirname $(python3 -c "import os; print(os.path.realpath('$0'));"))

if [[ $# > 0 ]]; then
    aws sts get-caller-identity >/dev/null 2>&1
    fzfyml3 run ${TOOL_DIR}/runs.yml $1
else
    echo "[Usage] bash $0 <job>-name" >&2
    echo "    ex) bash $0 t_lake_pos-dev" >&2
fi


