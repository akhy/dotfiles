unsetopt correct_all

# Bin directory
export PATH=$HOME/.dotfiles/bin:$PATH

# Source additional zsh files
for r in $HOME/.dotfiles/zsh.d/*.zsh; do
	if [[ $DEBUG > 0 ]]; then
		echo "zsh: sourcing $r"
	fi
	source $r
done

