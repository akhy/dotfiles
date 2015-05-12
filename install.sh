#!/bin/sh

# Install Antigen
if [ ! -f antigen.zsh ]; then
	curl -L https://raw.githubusercontent.com/zsh-users/antigen/master/antigen.zsh > antigen.zsh
fi
echo "Zsh-Antigen has been installed."

# Configuring ZSH
tmp_cur_dir=`pwd`
dotfiles_path_from_home="`zsh relative.sh $HOME $tmp_cur_dir`"
zshrc_real="$HOME/.zshrc"
zshrc_path="$dotfiles_path_from_home/.zshrc"
zshrc_append="source \"\$HOME/$zshrc_path\""
grep -q -F "$zshrc_append" $zshrc_real || echo $zshrc_append >> $zshrc_real
echo "Zsh configs appended to $zshrc_real"

# Configure Git
git config --global core.editor vim
git config --global color.ui auto
git config --global pretty.nice '%C(yellow)%h%C(reset) %C(white)%s%C(cyan)%d%C(reset) -- %an; %ar'
git config --global alias.lo 'log --pretty=nice'
git config --global alias.b 'branch'
git config --global alias.ba 'branch -a'
git config --global alias.ci 'commit'
git config --global alias.co 'checkout'
git config --global alias.d 'diff'
git config --global alias.dc 'diff --cached'
git config --global alias.fp 'format-patch'
git config --global alias.g '!git gui &'
git config --global alias.gr 'log --graph'
git config --global alias.go 'log --graph --pretty=oneline --abbrev-commit'
git config --global alias.k '!gitk &'
git config --global alias.ka '!gitk --all &'
git config --global alias.lc 'log ORIG_HEAD.. --stat --no-merges'
git config --global alias.lp 'log --patch-with-stat'
git config --global alias.mnf 'merge --no-ff'
git config --global alias.mnff 'merge --no-ff'
git config --global alias.mt 'mergetool'
git config --global alias.p 'format-patch -1'
git config --global alias.serve '!git daemon --reuseaddr --verbose  --base-path=. --export-all ./.git'
git config --global alias.sra 'svn rebase --all'
git config --global alias.sh '!git-sh'
git config --global alias.st 'status'
git config --global alias.stm 'status --untracked=no'
git config --global alias.stfu 'status --untracked=no'
git config --global alias.pullsrb '!git stash save && git pull --rebase && git stash pop && echo "Success!"'
echo "Git has been configured"
