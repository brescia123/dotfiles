# Git
# repository status and completion
source ~/.git-prompt.sh
source ~/.git-completion.bash
source ~/.gradle-tab-completion.bash

# PS1
GIT_PS1_SHOWDIRTYSTATE=true
export PS1="$(tput setaf 2)\u@$(tput setaf 2)mac:$(tput setaf 4)\W$(tput setaf 1)\$(__git_ps1)$(tput setaf 7) \$ $(tput sgr0)"
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export ANDROID_HOME=/usr/local/share/android-sdk

if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

# PATH
PATH=$PATH:/usr/local/sbin:$ANDROID_HOME/tools/bin/

# Brew repository completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# Lunchy completion
LUNCHY_DIR=$(dirname `gem which lunchy`)/../extras
if [ -f $LUNCHY_DIR/lunchy-completion.bash ]; then
  . $LUNCHY_DIR/lunchy-completion.bash
fi

# Autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# Aliases
alias grw='./gradlew'
