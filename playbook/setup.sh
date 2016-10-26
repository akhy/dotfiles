#!/bin/bash

if [ "$1" == "" ]; then
  echo "USAGE: $0 <hosts> [reset]"
  exit 1
fi

if [ "$2" == "reset" ]; then
  ansible_args="-e dotfiles_reset=true"
  echo "WARNING: \"$0 $1 reset\" will delete your existing dotfiles"
  echo
fi

ansible-playbook -l $1 $ansible_args setup.yml
