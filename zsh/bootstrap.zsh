#
# load all required zsh plugins
#

# install and source zgen
zgen_file=$DOTFILES/zsh/zgen.zsh
if [ ! -f $zgen_file ]; then
  curl -L https://github.com/tarjoilija/zgen/raw/master/zgen.zsh > $zgen_file
  echo "zgen has been installed."
fi
source $zgen_file

zgen_load () {
  if ! zgen saved; then
    echo "creating a zgen save."

    # essential
    zgen load zsh-users/zsh-syntax-highlighting
    zgen load zsh-users/zsh-completions src
    zgen load Tarrasch/zsh-bd
    zgen oh-my-zsh
    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/git-flow
    zgen oh-my-zsh plugins/cp
    zgen oh-my-zsh plugins/vi-mode
    zgen oh-my-zsh plugins/sublime

    # development
    zgen oh-my-zsh plugins/adb
    zgen oh-my-zsh plugins/gradle

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

    zgen save
  fi
}

zgen_reload () {
  rm $HOME/.zgen/init.zsh
  zgen_load
}

zgen_load
