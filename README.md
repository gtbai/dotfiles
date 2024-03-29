# dotfiles
To sync my dotfiles.

## Prerequisites

+ Unix-like operating system (macOS or Linux)
+ [Zsh](http://www.zsh.org/) should be installed (v4.3.9 or more recent). If not pre-installed (zsh --version to confirm), check the following instruction here: [Installing ZSH](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH)
  + After installation, change `zsh` to default shell with ```chsh -s $(which zsh)```
+ [Oh My Zsh](http://ohmyz.sh/) should be installed. Installation can be done with one line of command:
  + via curl: ```sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"```
  + via wget: ```sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"```
+ [Homebrew](https://brew.sh/) should be installed
+ (Optional but really recommended) [Increase key repeat speed](https://apple.stackexchange.com/questions/10467/how-to-increase-keyboard-key-repeat-rate-on-os-x)
  ```
  ❯ defaults write -g InitialKeyRepeat -int 20
  ❯ defaults write -g KeyRepeat -int 2
  # Confirm it is working
  ❯ defaults read -g InitialKeyRepeat
  20
  ❯ defaults read -g KeyRepeat
  2
  ```

## Usage

1. Clone this git repo to your home directory: ```cd ~ && git clone https://github.com/gtbai/dotfiles.git```
2. Run ```setup_mac.sh``` to set up the configuration for MacOS machines, ```setup_linux.sh``` for Linux.
3. ~~As some vim plugins are too big to be uploaded to GitHub, you need to install them by yourself. Do not be terrified though, this can be done with a one-line command as well. In vim, under normal mode, type ```:PlugInstall``` and press Enter, then the beautiful [vim-plug](https://github.com/junegunn/vim-plug) will do the work for you.~~
4. (Optional) Re-configure the prompt appearance with `p10k configure`.
5. Enjoy!

## WARNING

Running ```setup.sh``` will overwrite your Vim, Tmux and Zsh configuration files, i.e. ```.vimrc```, ```.tmux.conf``` and ```.zshrc```. Please back them up before running ```setup.sh``` when necessary.
