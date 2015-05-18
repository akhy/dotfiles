#
# load all required zsh plugins
#

# install and source antigen
antigen_file=$DOTFILES/zsh/antigen.zsh
if [ ! -f $antigen_file ]; then
	curl -L https://raw.githubusercontent.com/zsh-users/antigen/master/antigen.zsh > $antigen_file
	echo "Zsh Antigen has been installed."
fi
source $antigen_file

# essential bundles
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle robbyrussell/oh-my-zsh lib/
antigen bundle git
antigen bundle git-flow
antigen bundle cp
antigen bundle vi-mode
antigen bundle sublime
antigen bundle Tarrasch/zsh-bd

# development
antigen bundle adb
antigen bundle gradle

# theme
antigen theme pygmalion

# osx
if [[ `uname` == 'Darwin' ]]
then
	antigen bundle brew
	antigen bundle brew-cask
	antigen bundle osx
fi

# linux
if [[ `uname` == 'Linux' ]]
then
	# TODO add linux specific plugins here
fi

# done
antigen apply