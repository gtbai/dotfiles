#!/bin/zsh

# install deps
sudo apt update
sudo apt install -y cmake python-dev 

cd ~/dotfiles
sh setup_common.sh
