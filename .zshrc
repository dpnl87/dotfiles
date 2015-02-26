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

# aws autocomplete
[ -f /opt/boxen/homebrew/Cellar/awscli/1.6.5/libexec/bin/aws_zsh_completer.sh ] && source /opt/boxen/homebrew/Cellar/awscli/1.6.5/libexec/bin/aws_zsh_completer.sh

# theme settings
autoload -Uz promptinit
promptinit
prompt minimal

export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# set boxen env
[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh
