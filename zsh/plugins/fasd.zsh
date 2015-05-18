if ! type "fasd" > /dev/null; then
  curl -L https://github.com/clvv/fasd/raw/master/fasd > $DOTFILES/bin/fasd
  chmod +x $DOTFILES/bin/fasd
  echo "FASD has been installed"
fi

eval "$(fasd --init auto)"
alias z="fasd_cd -d"
