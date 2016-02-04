#!/bin/bash

# Homebrew
which -s brew
if [[ $? != 0 ]] ; then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    brew update
fi

# Git
which -s git || brew install git

# Ruby (only to install lunchy)
brew install ruby

# Lunchy (github.com/eddiezane/lunchy)
gem install lunchy

# Autojump (github.com/wting/autojump)
brew install autojump

# Creating hard links to the home folder; using -f to replace existing links
ln -f .git-prompt.sh ~/.git-prompt.sh
ln -f .git-completion.bash ~/.git-completion.bash
ln -f .bash_profile ~/.bash_profile
ln -f .gitconfig ~/.gitconfig

# Setting osx config defaults
bash .osx

# Install software
bash .software
