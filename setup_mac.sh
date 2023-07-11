#!/bin/zsh

# install deps
brew install cmake python wget bat ripgrep
brew install macvim tmux

cd ~/dotfiles
sh setup_common.sh
