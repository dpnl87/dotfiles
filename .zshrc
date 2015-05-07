#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

#packer
export PATH="$HOME/packer:$PATH"

alias gst="git status"
alias gitl="git log --graph --pretty=format:'%C(yellow)%h%Creset -%C(yellow)%d%Creset %s %C(bold red)(%cr) %C(blue)<%an>%Creset' --abbrev-commit --date=short"
alias be="bundle exec"

# added by travis gem
[ -f /home/dpaulus/.travis/travis.sh ] && source /home/dpaulus/.travis/travis.sh

# theme settings
autoload -Uz promptinit
promptinit
prompt minimal

export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# set boxen env
[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh

# Postgres ENV
export PATH="/Applications/Postgres.app/Contents/Versions/9.4/bin/:$PATH"

# Rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Boot2docker
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/dpaulus/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1

# pip should only run if there is a virtualenv currently activated
export PIP_REQUIRE_VIRTUALENV=true
# virtualenvwrapper
WRAPPER_PATH=$HOMEBREW_ROOT/bin/virtualenvwrapper.sh
[ -f ~/.virtualenvs ] && export WORKON_HOME=~/.virtualenvs
[ -f $WRAPPER_PATH  ] && source $WRAPPER_PATH
