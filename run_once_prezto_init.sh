#!/bin/sh

ZDOTDIR=$HOME/.zprezto
REPO=git@github.com:sorin-ionescu/prezto.git

if [ ! -d $ZDOTDIR ]; then
  git clone $REPO $ZDOTDIR
fi
