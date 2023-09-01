#!/bin/zsh

read -r -k 1 -q "?This will overwrite your exisiting dotfiles, are you sure? ([n]/y)"
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    [[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1 # handle exits from shell or function but don't exit interactive shell
fi

# remove old dotfiles
rm -rf ~/.vimrc
rm -rf ~/.tmux.conf
rm -rf ~/.zshrc
rm -rf ~/.p10k.zsh

# copy new ones here
cp -r ~/dotfiles/.vim ~/
cp -r ~/dotfiles/.vimrc ~/
cp -r ~/dotfiles/.tmux.conf ~/
cp -r ~/dotfiles/.zshrc ~/
cp -r ~/dotfiles/.p10k.zsh ~/

# Install powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Install zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Install zsh-history-substring-search
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search

# Install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Install fzf for command-line fuzzy finder
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# Install fzf-git.sh
wget -O ~/.fzf/shell/fzf-git.sh https://raw.githubusercontent.com/junegunn/fzf-git.sh/main/fzf-git.sh

# Install fzf-tab
git clone https://github.com/Aloxaf/fzf-tab ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-tab

# Create rfv script for fzf+ripgrep integration
cat <<EOF >>~/.fzf/shell/rfv
#!/usr/bin/env bash

# 1. Search for text in files using Ripgrep
# 2. Interactively narrow down the list using fzf
# 3. Open the file in Vim
IFS=: read -ra selected < <(
  rg --color=always --line-number --no-heading --smart-case "${*:-}" |
    fzf --ansi \
        --color "hl:-1:underline,hl+:-1:underline:reverse" \
        --delimiter : \
        --preview 'bat --color=always {1} --highlight-line {2}' \
        --preview-window 'up,60%,border-bottom,+{2}+3/3,~3'
)
[ -n "${selected[0]}" ] && vim "${selected[0]}" "+${selected[1]}"
EOF

# Install iTerm2 Shell Integration to show hostname on title bar
curl -L https://iterm2.com/shell_integration/zsh \
-o ~/.iterm2_shell_integration.zsh

# Enforce .zshrc. Errors might occur. To fix them, just comment/delete lines causing error.
source ~/.zshrc

# Install plugins for vim
vim -c "PlugInstall"

# Install YouCompleteMe
# cd ~/.vim/plugged/YouCompleteMe
# ./install.py
