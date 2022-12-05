#!/bin/zsh

# install deps
sudo apt update
sudo apt install -y cmake python-dev bat ripgrep
sudo apt install -y tmux

cd ~/dotfiles
sh setup_common.sh
