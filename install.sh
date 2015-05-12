#!/bin/sh

# Install Antigen
if [ ! -f antigen.zsh ]; then
	curl -L https://raw.githubusercontent.com/zsh-users/antigen/master/antigen.zsh > antigen.zsh
fi
echo "Antigen has been installed."
