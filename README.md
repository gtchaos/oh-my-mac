## Homebrew 安装

建议参考：https://brew.idayer.com/guide

## Vim-Plugin 
参考：https://github.com/junegunn/vim-plug

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

之后，将以下内容拷贝到~/.vimrc文件中：

```
" ==================== vim-plug 开始 ====================
call plug#begin('~/.vim/plugged')

Plug 'VundleVim/Vundle.vim'           " 让 vim-plug 自己管理自己（可选）
Plug 'tpope/vim-fugitive'
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-syntastic/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'sjl/gundo.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'tomasr/molokai'
Plug 'chriskempson/vim-tomorrow-theme'

call plug#end()
" ==================== vim-plug 结束 ====================

" 颜色主题（选一个你喜欢的）
syntax enable
set background=dark
colorscheme molokai
```

## Terminal/iTerm2

Mac OS X 自带的 Terminal 和免费的 iTerm2 都是很好用的工具，iTerm2 可以切分成多窗口，更方便一些。

如果你使用的是 Terminal 的话，在 solarized/osx-terminal.app-colors-solarized 下双击 Solarized Dark ansi.terminal 和 Solarized Light ansi.terminal 就会自动导入两种配色方案 Dark 和 Light 到 Terminal.app 里。

如果你使用的是 iTerm2 的话，到 solarized/iterm2-colors-solarized 下双击 Solarized Dark.itermcolors 和 Solarized Light.itermcolors 两个文件就可以把配置文件导入到 iTerm 里。


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

