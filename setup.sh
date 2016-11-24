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

# Tig
which -s tig || brew install tig

# Ruby (only to install lunchy)
brew install ruby

# Lunchy (github.com/eddiezane/lunchy)
gem install lunchy

# Autojump (github.com/wting/autojump)
brew install autojump

# md5sum
brew install md5sha1sum

# Creating hard links to the home folder; using -f to replace existing links
ln -f .git-prompt.sh ~/.git-prompt.sh
ln -f .git-completion.bash ~/.git-completion.bash
ln -f .bash_profile ~/.bash_profile
ln -f .gitconfig ~/.gitconfig
ln -f gradle.properties ~/.gradle
ln -f .gradle-tab-completion.bash ~/.gradle-tab-completion.bash

# Setting osx config defaults
bash .osx

# Install software
bash .software
