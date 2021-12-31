#!/bin/sh

ZDOTDIR=$HOME/.zprezto
REVISION=master

cd $ZDOTDIR
git fetch origin --prune --tags
git checkout origin/$REVISION
git submodule update --init --recursive
