if [ ! -s $HOME/.rbenv ]; then
    rbenv_path=$HOME/.rbenv
    echo "time to get rbenv"
    git clone --depth 1 git://github.com/sstephenson/rbenv.git $rbenv_path
    git clone git://github.com/sstephenson/ruby-build.git $rbenv_path/plugins
else
    echo "rbenv already exists - skipping it"
fi
