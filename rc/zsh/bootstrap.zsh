#
# load all required zsh plugins
#

# source zgen
source $DOTFILES_ROOT/tools/zgen/zgen.zsh

zgen_load () {
  if ! zgen saved; then
    echo "creating a zgen save."

    # essential
    zgen load zsh-users/zsh-syntax-highlighting
    zgen load zsh-users/zsh-completions src
    zgen load sharat87/zsh-vim-mode
    zgen load Tarrasch/zsh-bd

    zgen oh-my-zsh
    zgen oh-my-zsh plugins/zsh_reload
    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/git-hubflow
    zgen oh-my-zsh plugins/cp
    zgen oh-my-zsh plugins/vi-mode
    zgen oh-my-zsh plugins/sublime
    zgen load supercrabtree/k

    # development
    zgen oh-my-zsh plugins/adb
    zgen oh-my-zsh plugins/gradle
    zgen oh-my-zsh plugins/composer
    zgen oh-my-zsh plugins/node
    zgen oh-my-zsh plugins/npm

    # theme
    zgen oh-my-zsh themes/pygmalion

    # osx
    if [[ `uname` == 'Darwin' ]]
    then
      zgen oh-my-zsh plugins/brew
      zgen oh-my-zsh plugins/brew-cask
      zgen oh-my-zsh plugins/osx
    fi

    # linux
    if [[ `uname` == 'Linux' ]]
    then
      # TODO add linux specific plugins here
    fi

    # windows
    # THERE IS NO WINDOWS!

    zgen save
  fi
}

zgen_reload () {
  zgen reset
  zgen_load
}

zgen_load
