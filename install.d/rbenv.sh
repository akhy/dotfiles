cmd="rbenv"
rbenv_path=$HOME/.rbenv
if ! loc="$(type -p "$cmd")" || [ -z "$loc" ] && [ ! -s "$rbenv_path" ]; then
    echo "time to get rbenv"
    git clone git://github.com/sstephenson/rbenv.git $rbenv_path
    git clone git://github.com/sstephenson/ruby-build.git $rbenv_path/plugins/ruby-build
else
    echo "rbenv already exists - skipping it"
fi
