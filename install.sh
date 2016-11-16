#!/bin/sh

# clone git repo bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

cp vimrc ~/.vimrc
cp zshrc ~/.zshrc
source ~/.zshrc
