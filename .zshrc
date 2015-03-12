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

# chefDK settings
export PATH="/opt/chefdk/bin:/Users/dpaulus/.chefdk/gem/ruby/2.1.0/bin:/opt/chefdk/embedded/bin:/opt/chefdk/embedded/bin:bin:/opt/boxen/rbenv/shims:/opt/boxen/rbenv/bin:/opt/boxen/ruby-build/bin:node_modules/.bin:/opt/boxen/nodenv/shims:/opt/boxen/nodenv/bin:/opt/boxen/bin:/opt/boxen/homebrew/bin:/opt/boxen/homebrew/sbin:/Users/dpaulus/packer:/opt/chefdk/embedded/bin:bin:/opt/boxen/rbenv/shims:/opt/boxen/rbenv/bin:/opt/boxen/ruby-build/bin:node_modules/.bin:/opt/boxen/nodenv/shims:/opt/boxen/nodenv/bin:/opt/boxen/bin:/opt/boxen/homebrew/bin:/opt/boxen/homebrew/sbin:/Users/dpaulus/packer:bin:/opt/boxen/rbenv/shims:/opt/boxen/rbenv/bin:/opt/boxen/ruby-build/bin:node_modules/.bin:/opt/boxen/nodenv/shims:/opt/boxen/nodenv/bin:/opt/boxen/bin:/opt/boxen/homebrew/bin:/opt/boxen/homebrew/sbin:/Users/dpaulus/packer:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin"
export GEM_ROOT="/opt/chefdk/embedded/lib/ruby/gems/2.1.0"
export GEM_HOME="/Users/dpaulus/.chefdk/gem/ruby/2.1.0"
export GEM_PATH="/Users/dpaulus/.chefdk/gem/ruby/2.1.0:/opt/chefdk/embedded/lib/ruby/gems/2.1.0"

# Postgres ENV
export PATH="/Applications/Postgres.app/Contents/Versions/9.4/bin/":$PATH
