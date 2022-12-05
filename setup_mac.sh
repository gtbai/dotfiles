#!/bin/zsh

# install deps
curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh
brew install cmake python wget bat ripgrep
brew install macvim tmux

cd ~/dotfiles
sh setup_common.sh
