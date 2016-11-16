#!/bin/sh

# clone git repo bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

mv ~/.vimrc ~/.vimrc.backup
cp vimrc ~/.vimrc
mv ~/.zshrc ~/.zshrc.backup
cp zshrc ~/.zshrc
mv ~/.bash_profile ~/.bash_profile.backup
cp bash_profile ~/.bash_profile
mv ~/.bash_aliases ~/.bash_aliases.backup
cp bash_aliases ~/.bash_aliases 
source ~/.zshrc