#!/bin/sh

sudo apt-get install -y git build-essential libssl-dev libreadline-dev

cat << '__EOF__' > /etc/sudoers.d/00_rbenv
Defaults !secure_path
Defaults env_keep += "PATH RBENV_ROOT"
__EOF__

export RBENV_ROOT=/usr/local/rbenv
export PATH=${RBENV_ROOT}/bin:${PATH}

sudo git clone git://github.com/sstephenson/rbenv.git ${RBENV_ROOT}
sudo git clone git://github.com/sstephenson/ruby-build.git ${RBENV_ROOT}/plugins/ruby-build

sudo rbenv init -

bash -c 'cat <<\__EOT__ >> ~/.profile
export RBENV_ROOT="/usr/local/rbenv"
export PATH="${RBENV_ROOT}/bin:${PATH}"
eval "$(rbenv init -)"
__EOT__'
