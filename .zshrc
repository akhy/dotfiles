export DOTFILES=$HOME/.dotfiles

# ANTIGEN
source $DOTFILES/antigen/antigen.zsh

# theme
antigen theme pygmalion

# essential bundles
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle robbyrussell/oh-my-zsh lib/
antigen bundle git
antigen bundle git-flow
antigen bundle cp
antigen bundle vi-mode
antigen bundle rupa/z
antigen bundle sublime
antigen-bundle Tarrasch/zsh-bd

# development
antigen bundle adb
antigen bundle gradle

# osx
if [[ `uname` == 'Darwin' ]]
then
	antigen bundle brew
	antigen bundle brew-cask
	antigen bundle osx
	source $DOTFILES/osx.zsh
fi

# linux
if [[ `uname` == 'Linux' ]]
then
	source $DOTFILES/linux.zsh
fi


# done
antigen apply

export EDITOR=vim
export HISTIGNORE="ls:ll:cd:cd -:pwd:exit:date:* --help"

# clean up duplicate paths
PATH=$(echo "$PATH" | awk -v RS=':' -v ORS=":" '!a[$1]++{if (NR > 1) printf ORS; printf $a[$1]}')

# aliases
alias filetree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'" 
