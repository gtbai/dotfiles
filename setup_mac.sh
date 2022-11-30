#!/bin/zsh

# install deps
curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh
brew install macvim cmake python

cd ~/dotfiles
sh setup_common.sh
