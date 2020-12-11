## Vundle 
Caution: oh-my-mac中的vimrc配置依赖于插件管理器vundle，so...你懂得！

Firstly Set up Vundle:

```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

之后，将clone的vimrc文件内容拷贝到~/.vimrc(注意：记得备份)，然后执行:VundleInstall即可使用全新的vim以及其中默认的几款插件（当然你也可以根据所需额外配置喔）。


下面主要讲解一下Mac OS X终端的配色方案
======================================================

相信长期浸泡在终端和代码的小伙伴们都有一套自己喜爱的配色方案。以前一直在用简单、适合阅读的 Terminal.app 配色方案，换到 MacBook Pro with Retina display 后发现这个配色时间看长了眼睛有点累。不断有人推荐 Solarized，看了一些截图，感觉还不错，决定试一下。

Solarized 是目前最完整的 Terminal/Editor/IDE 配色项目，几乎覆盖所有主流操作系统（Mac OS X, Linux, Windows）、编辑器和 IDE（Vim, Emacs, Xcode, TextMate, NetBeans, Visual Studio 等），终端（iTerm2, Terminal.app, Putty 等）。类似的项目还有 Tomorrow Theme.

要在 Mac OS X 终端里舒服的使用命令行（至少）需要给3个工具配色，terminal、vim 和 ls. 首先下载 Solarized：

```
git clone git://github.com/altercation/solarized.git
```

## Terminal/iTerm2

Mac OS X 自带的 Terminal 和免费的 iTerm2 都是很好用的工具，iTerm2 可以切分成多窗口，更方便一些。

如果你使用的是 Terminal 的话，在 solarized/osx-terminal.app-colors-solarized 下双击 Solarized Dark ansi.terminal 和 Solarized Light ansi.terminal 就会自动导入两种配色方案 Dark 和 Light 到 Terminal.app 里。

如果你使用的是 iTerm2 的话，到 solarized/iterm2-colors-solarized 下双击 Solarized Dark.itermcolors 和 Solarized Light.itermcolors 两个文件就可以把配置文件导入到 iTerm 里。

## Vim 配色

Vim 的配色最好和终端的配色保持一致，不然在 Terminal/iTerm2 里使用命令行 Vim 会很别扭：

```
cd solarized
cd vim-colors-solarized/colors
mkdir -p ~/.vim/colors
cp solarized.vim ~/.vim/colors/

vi ~/.vimrc
syntax enable
set background=dark
colorscheme solarized
```

## ls

Mac OS X 是基于 FreeBSD 的，所以一些工具 ls, top 等都是 BSD 那一套，ls 不是 GNU ls，所以即使 Terminal/iTerm2 配置了颜色，但是在 Mac 上敲入 ls 命令也不会显示高亮，可以通过安装 coreutils 来解决（brew install coreutils），不过如果对 ls 颜色不挑剔的话有个简单办法就是在 .bash_profile 里输出 CLICOLOR=1：

```
vi ~/.bash_profile
export CLICOLOR=1
```

## update homebrew origin
#### 替换brew.git

```
cd "$(brew --repo)"
# 中国科大
git remote set-url origin https://mirrors.ustc.edu.cn/brew.git
# or 清华大学
git remote set-url origin https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git
```

#### 替换homebrew-core.git

```
cd "$(brew --repo)/Library/Taps/homebrew/homebrew-core"
# 中国科大
git remote set-url origin https://mirrors.ustc.edu.cn/homebrew-core.git
# or 清华大学
git remote set-url origin https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git
```

#### 替换homebrew-bottles

```
# 中国科大 homebrew-bottles
echo 'export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles' >> ~/.bash_profile
source ~/.bash_profile
# 或者清华大学
echo 'export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles' >> ~/.bash_profile
source ~/.bash_profile
```

#### brew 生效

```
brew update
```

## sublimeText 3

#### 插件安装

* Pretty JSON
* A File Icon
* ayu Theme (mirage)

记得将该文件 ayu-mirage.sublime-theme 拷贝到 $SUBLIME_TEXT3_PACKAGES/user/ 目录下，会发现 sublime text 的 title bar 颜色也会跟着 ayu-mirage 主题发生变化哦！