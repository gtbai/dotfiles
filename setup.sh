#!/bin/zsh

# remove old dotfiles
rm -rf ~/.vimrc
rm -rf ~/.viminfo
rm -rf ~/.tmux
rm -rf ~/.tmux.conf
rm -rf ~/.zshrc

# copy new ones here
cp -r ~/dotfiles/.vim ~/
cp -r ~/dotfiles/.vimrc ~/
cp -r ~/dotfiles/.viminfo ~/
cp -r ~/dotfiles/.tmux ~/
cp -r ~/dotfiles/.tmux.conf ~/
cp -r ~/dotfiles/.zshrc ~/
cp -r ~/dotfiles/.oh-my-zsh ~/

# Enforce .zshrc. Errors might occur. To fix them, just comment/delete lines causing error.
source ~/.zshrc

# install plugins for vim
vim -c "PlugInstall"

# install YouCompleteMe
sudo apt install -y cmake python-dev 
cd ~/.vim/plugged/YouCompleteMe
./install.py

# install fzf for command-line fuzzy finder
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
