#!/bin/sh

if [ ! -e '/home/vagrant/.rbenv' ]; then
    sudo apt-get install -y git build-essential libssl-dev libreadline-dev
    git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
    echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
    echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
    exec $SHELL -l
fi
