#!/usr/bin/env bash
set -eu

TOOL_DIR="./fzf-glue-job-console"
rm -fr $TOOL_DIR
mkdir -p $TOOL_DIR/bin
cd $TOOL_DIR

if ! which fzf >/dev/null; then
    FZF_DL='https://github.com/junegunn/fzf/releases/download/0.25.0/fzf-0.25.0-darwin_amd64.tar.gz'
    wget $FZF_DL
    tar xvf $(basename $FZF_DL)
    chmod +x fzf
    mv fzf bin/fzf
    rm -f $(basename $FZF_DL)
fi

if ! which fzfyml3 >/dev/null; then
    FZFYML3_REPO='https://github.com/cm-hirano-shigetoshi/fzfyml3.git'
    git clone $FZFYML3_REPO
    ln -s ../fzfyml3/bin/fzfyml3 bin/fzfyml3
fi

if ! which fzf-glue >/dev/null; then
    FZF_GLUE_REPO='https://github.com/cm-hirano-shigetoshi/fzf-glue-job-console.git'
    git clone $FZF_GLUE_REPO
    ln -s ../fzf-glue-job-console/fzf-glue bin/fzf-glue
fi

