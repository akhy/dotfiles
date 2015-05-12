#!/bin/sh

# Install Antigen
if [ ! -f antigen.zsh ]; then
	curl -L https://raw.githubusercontent.com/zsh-users/antigen/master/antigen.zsh > antigen.zsh
fi
echo "Antigen has been installed."

# Install Vundle
if [ ! -e ~/.vim/bundle/Vundle.vim ]; then
	git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
echo "Vundle has been installed."
