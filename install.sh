#!/bin/sh

# install homebrew

/bin/zsh -c "$(curl -fsSL https://gitee.com/cunkai/HomebrewCN/raw/master/Homebrew.sh)"

# install bundle
# git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
tar zxf bundle.tar.gz 
cp -rf bundle ~/.vim

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install autojump, autosuggestions and syntax-highlighting
brew install autojump
git clone git://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# backup vimrc 
mv ~/.vimrc ~/.vimrc.backup
cp vimrc ~/.vimrc
# backup zshrc
mv ~/.zshrc ~/.zshrc.backup
cp zshrc ~/.zshrc
# maven repository setting
mkdir -p $HOME/.m2
cp settings.xml $HOME/.m2/
source ~/.zshrc

# install wget cloc 
brew install wget
brew install cloc
 
