# dotfiles
To sync my dotfiles.

## Prerequisites

+ Unix-like operating system (macOS or Linux)
+ [Zsh](http://www.zsh.org/) should be installed (v4.3.9 or more recent). If not pre-installed (zsh --version to confirm), check the following instruction here: [Installing ZSH](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH)
+ [Oh My Zsh](http://ohmyz.sh/) should be installed. Installation can be done with one line of command:
  + via curl: ```sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"```
  + via wget: ```sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"```

## Usage

1. Clone this git repo to your local machine: ```git clone https://github.com/gtbai/dotfiles.git```
2. Run ```setup.sh``` to set up the configuration.
3. ~~As some vim plugins are too big to be uploaded to GitHub, you need to install them by yourself. Do not be terrified though, this can be done with a one-line command as well. In vim, under normal mode, type ```:PlugInstall``` and press Enter, then the beautiful [vim-plug](https://github.com/junegunn/vim-plug) will do the work for you.~~
4. Enjoy!

## WARNING

Running ```setup.sh``` will overwrite your Vim, Tmux and Zsh configuration files, i.e. ```.vimrc```, ```.tmux.conf``` and ```.zshrc```. Please back them up before running ```setup.sh``` when necessary.
