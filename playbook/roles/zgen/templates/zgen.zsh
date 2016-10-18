#!/bin/zsh

source {{ zgen_dir }}/zgen.zsh

if ! zgen saved; then
    echo "creating a zgen save."

    # essential
    zgen load zsh-users/zsh-syntax-highlighting
    zgen load zsh-users/zsh-completions src
    zgen load Tarrasch/zsh-bd

    zgen oh-my-zsh
    zgen oh-my-zsh plugins/sudo
    zgen oh-my-zsh plugins/tig
    zgen oh-my-zsh plugins/zsh_reload
    zgen oh-my-zsh plugins/history
    zgen oh-my-zsh plugins/git-extras
    zgen oh-my-zsh plugins/cp
    zgen oh-my-zsh plugins/vi-mode

    for file ({{ zgen_modules_dir }}/*.zsh); do
      source $file
    done
    unset file

    # theme
    zgen load mafredri/zsh-async
    zgen load sindresorhus/pure

    zgen save
fi
