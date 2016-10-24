#!/bin/zsh

source {{ zgen_dir }}/zgen.zsh

if ! zgen saved; then
    echo "creating a zgen save."

    if [[ `uname` == "Darwin" ]]; then
        zgen prezto homebrew
        zgen prezto osx
    elif [[ `uname` == "Linux" ]]; then
        # nothing
    fi

    zgen load willghatch/zsh-saneopt
    zgen load docker/docker contrib/completion/zsh
    zgen load Tarrasch/zsh-bd
    zgen load supercrabtree/k
    zgen load hcgraf/zsh-sudo
    zgen load sharat87/zsh-vim-mode

    zgen prezto tmux
    zgen prezto archive
    zgen prezto utility
    zgen prezto history-substring-search
    zgen prezto

    zgen save
fi
