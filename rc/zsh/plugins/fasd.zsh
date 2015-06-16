if ! type "fasd" > /dev/null; then
  curl -L https://github.com/clvv/fasd/raw/master/fasd > $DOTFILES_ROOT/bin/fasd
  chmod +x $DOTFILES_ROOT/bin/fasd
  echo "FASD has been installed"
fi

eval "$(fasd --init auto)"
alias z="fasd_cd -d" # quick change directory
alias v='f -e vim' # quick open file in vim

if [[ `uname` == 'Darwin'  ]]
then
  alias o='a -e open'
else
  alias o='a -e xdg-open'
fi
