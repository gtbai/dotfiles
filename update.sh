# remove old dotfiles
rm -rf ~/dotfiles/.vim
rm -rf ~/dotfiles/.vimrc
rm -rf ~/dotfiles/.viminfo
rm -rf ~/dotfiles/.tmux
rm -rf ~/dotfiles/.tmux.conf
rm -rf ~/dotfiles/.zshrc
rm -rf ~/dotfiles/.oh-my-zsh

# copy new ones here
cp -r ~/.vim ~/dotfiles/
rm -rf ~/dotfiles/.vim/plugged/*
cp -r ~/.vimrc ~/dotfiles/
cp -r ~/.viminfo ~/dotfiles/
cp -r ~/.tmux ~/dotfiles/
cp -r ~/.tmux.conf ~/dotfiles/ 
cp -r ~/.zshrc ~/dotfiles/
cp -r ~/.oh-my-zsh ~/dotfiles/

# remove sub git repos
find .vim | grep /.git | xargs rm -rf
find .tmux | grep /.git | xargs rm -rf
find .oh-my-zsh | grep /.git | xargs rm -rf
