#!/bin/bash
# Creating hard links to the home folder; using -f to replace existing links
ln -f .git-prompt.sh ~/.git-prompt.sh
ln -f .git-completion.bash ~/.git-completion.bash
ln -f .bash_profile ~/.bash_profile
