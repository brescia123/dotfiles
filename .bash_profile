# Git
# repository status and completion
source ~/.git-prompt.sh
source ~/.git-completion.bash
source /usr/local/opt/autoenv/activate.sh

# PS1
export PS1="$(tput setaf 2)\u@$(tput setaf 2)mac:$(tput setaf 4)\W$(tput setaf 1)\$(__git_ps1)$(tput setaf 7) \$ $(tput sgr0)"
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export ANDROID_HOME=~/Developer/android-sdk/

# PATH
PATH=$PATH:/usr/local/sbin
# Android tools
PATH=$PATH:~/Developer/android-sdk/platform-tools/
# Sublime Text executable
PATH=$PATH:/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/


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
