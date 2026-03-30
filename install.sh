#!/bin/sh

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


# install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

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

# GPU accelerated terminal emulator
brew install --cask ghostty
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
# install opencode
brew install anomalyco/tap/opencode
# install github cli
brew install gh
# format tool
brew install jq yq gofumpt black prettier

