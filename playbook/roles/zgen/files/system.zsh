
if [[ `uname` == "Darwin" ]]; then
    zgen oh-my-zsh plugins/brew
    zgen oh-my-zsh plugins/osx
elif [[ `uname` == "Linux" ]]; then
  if type "systemctl" > /dev/null; then
    zgen oh-my-zsh plugins/systemd
  fi

  if type "apt-get" > /dev/null; then
    zgen oh-my-zsh plugins/debian
  fi
fi

if type "docker" > /dev/null; then
    zgen oh-my-zsh plugins/docker
    zgen oh-my-zsh plugins/docker-compose
fi
