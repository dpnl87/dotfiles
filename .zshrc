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

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

#packer
export PATH="$HOME/packer:$PATH"

alias gst="git status"
alias gitl="git log --graph --pretty=format:'%C(yellow)%h%Creset -%C(yellow)%d%Creset %s %C(bold red)(%cr) %C(blue)<%an>%Creset' --abbrev-commit --date=short"

#nvm stuff
source ~/.nvm/nvm.sh

# added by travis gem
[ -f /home/dpaulus/.travis/travis.sh ] && source /home/dpaulus/.travis/travis.sh

# aws autocomplete
source /usr/bin/aws_zsh_completer.sh

# theme settings
autoload -Uz promptinit
promptinit
prompt paradox
