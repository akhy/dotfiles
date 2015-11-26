export PATH=$PATH:$DOTFILES_ROOT/tools/fasd/fasd

eval "$(fasd --init auto)"
alias z="fasd_cd -d" # quick change directory
alias v='f -e vim' # quick open file in vim

if [[ `uname` == 'Darwin'  ]]
then
  alias o='a -e open'
else
  alias o='a -e xdg-open'
fi
