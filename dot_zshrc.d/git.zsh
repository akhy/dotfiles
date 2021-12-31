#!/usr/bin/env zsh

alias git=hub

gcleanbranch() {
  branch=${1:-master}
  \git branch --merged $branch --format '%(refname:short)' | grep -vF $branch | xargs git branch -d
}
