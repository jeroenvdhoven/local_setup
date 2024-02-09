# CONFIG for SPARK
export SPARK_LOCAL_IP=127.0.0.1
export PYSPARK_PYTHON=python
export PYSPARK_DRIVER_PYTHON=python
# Needs to be unset so I can have different spark version in different projects
# export SPARK_HOME=~/Documents/spark/3.2.1

# Git prompt
if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  GIT_PROMPT_ONLY_IN_REPO=1
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi
GIT_PROMPT_ONLY_IN_REPO=1
GIT_PROMPT_FETCH_REMOTE_STATUS=0

# Not sure if this is needed, but kept just in case.
# . ~/.bash-git-prompt/gitprompt.sh

# Git autocomplete
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

alias ll="ls -la"
alias gst="git status"
alias gco="git checkout"
alias gcm="git commit"
alias conda="mamba"

eval "$(/opt/homebrew/bin/brew shellenv)"

# JAVA
brew install java11
export PATH="$(brew --prefix)/opt/openjdk@11/bin:$PATH"
