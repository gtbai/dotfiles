#!/bin/zsh

# remove old dotfiles
rm -rf ~/dotfiles/.vim
rm -rf ~/dotfiles/.vimrc
rm -rf ~/dotfiles/.tmux.conf
rm -rf ~/dotfiles/.zshrc
rm -rf ~/dotfiles/.oh-my-zsh
rm -rf ~/dotfiles/.p10k.zsh

# copy new ones here

# Vim
mkdir ~/dotfiles/.vim
cp -r ~/.vim/autoload ~/dotfiles/.vim/
mkdir ~/dotfiles/.vim/plugged
cp -r ~/.vim/plugin.vim ~/dotfiles/.vim/
cp -r ~/.vim/bclose.vim ~/dotfiles/.vim/
cp -r ~/.vim/vimrc ~/dotfiles/.vim/
cp -r ~/.vimrc ~/dotfiles/

# Tmux
cp -r ~/.tmux.conf ~/dotfiles/ 

# zsh
sed '/Bruce/,$d' ~/.zshrc > ~/dotfiles/.zshrc
cp ~/.p10k.zsh ~/dotfiles

# remove sub git repos
find .vim | grep /.git | xargs rm -rf
