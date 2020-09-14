#!/bin/bash

# Homebrew
which -s brew
if [[ $? != 0 ]] ; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
else
    brew update
fi

# Git
which -s git || brew install git

# Tig
which -s tig || brew install tig

# Autojump (github.com/wting/autojump)
brew install autojump

# md5sum
brew install md5sha1sum

# Install zsh
read -p "Install oh-my-zsh? " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    brew install zsh zsh-completions
    chsh -s /bin/zsh
    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    ln -f .zshrc ~/.zshrc
fi

# Creating hard links to the home folder; using -f to replace existing links
ln -f .git-prompt.sh ~/.git-prompt.sh
ln -f .git-completion.bash ~/.git-completion.bash
ln -f .gitconfig ~/.gitconfig
ln -f gradle.properties ~/.gradle
ln -f .gradle-tab-completion.bash ~/.gradle-tab-completion.bash

# Setting osx config defaults
bash .osx

# Install software
bash .software
