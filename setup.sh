#!/bin/zsh

# remove old dotfiles
rm -rf ~/.vimrc
rm -rf ~/.viminfo
rm -rf ~/.tmux
rm -rf ~/.tmux.conf
rm -rf ~/.zshrc
rm -rf ~/.oh-my-zsh

# install deps
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sudo apt update
sudo apt install -y cmake python-dev 

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
cd ~/.vim/plugged/YouCompleteMe
./install.py

# install fzf for command-line fuzzy finder
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
