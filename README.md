## Homebrew 安装

建议参考：https://brew.idayer.com/guide

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


## sublimeText 3

#### 插件安装

* Pretty JSON
* A File Icon
* ayu Theme (mirage)

记得将该文件 ayu-mirage.sublime-theme 拷贝到 $SUBLIME_TEXT3_PACKAGES/user/ 目录下，会发现 sublime text 的 title bar 颜色也会跟着 ayu-mirage 主题发生变化哦！


## lrzsz for iterm2
在 mac 下，实现与服务器进行便捷的文件上传和下载操作。

#### 步骤

1.安装支持rz和sz命令的lrzsz：brew install lrzsz

2.在本地/usr/local/bin/目录下保存iterm2-send-zmodem.sh 和iterm2-recv-zmodem.sh两个脚本

3.设置一下两个脚本的权限，一般 chmod 777 就行了

```
chmod 777 /usr/local/bin/iterm2-*
```

4.设置Iterm2的Tirgger特性，profiles->default->editProfiles->Advanced中的Tirgger

添加两条trigger，分别设置 Regular expression，Action，Parameters，Instant如下：

1.第一条
        Regular expression: rz waiting to receive.\*\*B0100
        Action: Run Silent Coprocess
        Parameters: /usr/local/bin/iterm2-send-zmodem.sh
        Instant: checked
2.第二条
        Regular expression: \*\*B00000000000000
        Action: Run Silent Coprocess
        Parameters: /usr/local/bin/iterm2-recv-zmodem.sh
        Instant: checked

