alias filetree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'"

# general aliases
alias _='sudo'
alias b='${(z)BROWSER}'
alias cp="${aliases[cp]:-cp} -i"
alias e='${(z)VISUAL:-${(z)EDITOR}}'
alias ln="${aliases[ln]:-ln} -i"
alias mkdir="${aliases[mkdir]:-mkdir} -p"
alias mv="${aliases[mv]:-mv} -i"
alias p='${(z)PAGER}'
alias po='popd'
alias pu='pushd'
alias rm="${aliases[rm]:-rm} -i"
alias type='type -a'

# disk usage
alias df='df -kh'
alias du='du -kh'

# ls
alias l='ls -1A'  # Lists in one column, hidden files.
alias ll='ls -lh' # Lists human readable sizes.
alias lr='ll -R'  # Lists human readable sizes, recursively.
alias la='ll -A'  # Lists human readable sizes, hidden files.
