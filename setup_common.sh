#!/bin/zsh

# remove old dotfiles
rm -rf ~/.vimrc
rm -rf ~/.viminfo
rm -rf ~/.tmux
rm -rf ~/.tmux.conf
rm -rf ~/.zshrc
rm -rf ~/.oh-my-zsh
rm -rf ~/.p10k.zsh

# copy new ones here
cp -r ~/dotfiles/.vim ~/
cp -r ~/dotfiles/.vimrc ~/
cp -r ~/dotfiles/.viminfo ~/
cp -r ~/dotfiles/.tmux ~/
cp -r ~/dotfiles/.tmux.conf ~/
cp -r ~/dotfiles/.zshrc ~/
cp -r ~/dotfiles/.p10k.zsh ~/

# Install powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Enforce .zshrc. Errors might occur. To fix them, just comment/delete lines causing error.
source ~/.zshrc

# Install plugins for vim
vim -c "PlugInstall"

# Install YouCompleteMe
cd ~/.vim/plugged/YouCompleteMe
./install.py

# Install fzf for command-line fuzzy finder
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
