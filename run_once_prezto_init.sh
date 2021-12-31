#!/bin/sh

PREZTODIR=$HOME/.zprezto
REPO=git@github.com:sorin-ionescu/prezto.git

if [ ! -d $PREZTODIR ]; then
  git clone $REPO $PREZTODIR
fi
