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

# AWS
export JAVA_HOME="$(/usr/libexec/java_home)"
export AWS_ACCESS_KEY_ID="AKIAIWSCFNDJGNBEREMA"
export AWS_SECRET_ACCESS_KEY="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"
export AWS_CREDENTIAL_FILE="/Users/dpaulus/.aws/credentials"
export AWS_KEYPAIR_NAME=aws-im-daniel
export AWS_AVAILABILITY_ZONE=eu-west-1a
export AWS_SECURITY_GROUP=sg-3efc265b
export AWS_REGION=eu-west-1
export AWS_AVAILABILITY_SUBNET=subnet-92e326e5
export AWS_IAM_PROFILE=KitchenIAM
export EC2_HOME="/opt/boxen/homebrew/Cellar/ec2-api-tools/1.7.1.0/libexec"
export AWS_AUTO_SCALING_HOME="/opt/boxen/homebrew/Cellar/auto-scaling/1.0.61.6/libexec"
export AWS_CLOUDFORMATION_HOME="/opt/boxen/homebrew/Cellar/aws-cfn-tools/1.0.12/libexec"
export AWS_ELASTICACHE_HOME="/opt/boxen/homebrew/Cellar/aws-elasticache/1.9.000/libexec"
export AWS_SNS_HOME="/opt/boxen/homebrew/Cellar/aws-sns-cli/2013-09-27/libexec"
export AWS_CLOUDWATCH_HOME="/opt/boxen/homebrew/Cellar/cloud-watch/1.0.20.0/libexec"
export SERVICE_HOME="$AWS_CLOUDWATCH_HOME"
export EC2_AMITOOL_HOME="/opt/boxen/homebrew/Cellar/ec2-ami-tools/1.5.3/libexec"
export AWS_ELB_HOME="/opt/boxen/homebrew/Cellar/elb-tools/1.0.35.0/libexec"
export AWS_RDS_HOME="/opt/boxen/homebrew/Cellar/rds-command-line-tools/1.14.001/libexec"

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
