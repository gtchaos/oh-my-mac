#!/bin/sh

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# GPU accelerated terminal emulator
brew install --cask ghostty

# install zsh
brew install zsh

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install autojump, autosuggestions and syntax-highlighting
brew install autojump
git clone git://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# config ghostty
mkdir -p ~/.config/ghostty
cp ghostty.config ~/.config/ghostty/config 

# backup vimrc/zshrc/ssh-config
mv ~/.vimrc ~/.vimrc.backup
cp vimrc ~/.vimrc
mv ~/.zshrc ~/.zshrc.backup
cp zshrc ~/.zshrc
mv ~/.ssh/config ~/.ssh/config.backup
cp ssh.config ~/.ssh/config

# maven repository setting
mkdir -p $HOME/.m2
cp settings.xml $HOME/.m2/
source ~/.zshrc

# openssh client
brew install trzsz-ssh
# clean your mac 
brew install mole
# file browser
brew install yazi
# pdf lib
brew install poppler
# svg lib
brew install resvg
# calculator code lines
brew install cloc
# tailnet manage tool
brew install tailscale
# install golang 
brew install go
# install github cli
brew install gh
# format tool
brew install jq yq gofumpt black prettier
# mycli
brew install mycli
