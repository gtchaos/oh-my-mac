" 插件开始
" ============================================
" 基础设置 - 性能优先
" ============================================
set nocompatible              " 关闭 vi 兼容模式
filetype plugin indent on     " 启用文件类型检测
syntax on                     " 启用语法高亮

" ============================================
" 界面与显示
" ============================================
set number                    " 显示行号
set relativenumber            " 相对行号（快速移动）
set cursorline                " 高亮当前行
set showcmd                   " 显示未完成的命令
set showmode                  " 显示当前模式
set laststatus=2              " 始终显示状态栏
set ruler                     " 显示光标位置
set scrolloff=8               " 滚动时保留8行上下文
set sidescrolloff=15          " 水平滚动保留15列
set signcolumn=yes            " 始终显示符号列（如 git 标记）

" ============================================
" 缩进与格式
" ============================================
set tabstop=4                 " Tab 宽度
set shiftwidth=4              " 自动缩进宽度
set softtabstop=4             " 退格键删除空格数
set expandtab                 " Tab 转空格
set smartindent               " 智能缩进
set autoindent                " 自动缩进
set shiftround                " 缩进取整
set nowrap                    " 禁止自动换行

" ============================================
" 搜索与替换
" ============================================
set hlsearch                  " 高亮搜索结果
set incsearch                 " 实时搜索
set ignorecase                " 忽略大小写
set smartcase                 " 智能大小写（包含大写则区分）
set gdefault                  " 默认全局替换（/g 自动添加）

" ============================================
" 编辑与交互
" ============================================
set backspace=indent,eol,start  " 允许退格删除任何内容
set mouse=a                   " 启用鼠标（但不依赖）
set timeoutlen=2000           " 按键等待时间（毫秒）
set updatetime=100            " 更新延迟（影响 gitgutter 等）
set history=1000              " 命令历史
set undofile                  " 持久化撤销历史
set undodir=~/.vim/undodir    " 撤销文件目录
set noswapfile                " 禁用交换文件
set nobackup                  " 禁用备份文件
set autoread                  " 文件外部修改自动重载

" ============================================
" 分屏与缓冲区
" ============================================
set splitbelow                " 新分屏在下方
set splitright                " 新分屏在右侧
set hidden                    " 允许隐藏未保存的缓冲区

" ============================================
" 折叠（可选）
" ============================================
set foldmethod=indent         " 基于缩进折叠
set foldlevel=99              " 默认不折叠
set foldenable                " 启用折叠

" ============================================
" 网络与插件
" ============================================
set encoding=utf-8            " 编码
set fileencoding=utf-8
set fileformat=unix
set wildmenu                  " 命令补全菜单
set wildmode=full             " 补全模式

" Leader 键设为空格（最常用）
let mapleader = " "

" 插件管理
call plug#begin('~/.vim/plugged')

" 文件导航
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" 代码补全与语言
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'github/copilot.vim'

" 代码注释与对齐
Plug 'tpope/vim-commentary'
Plug 'junegunn/vim-easy-align'

" 状态栏与图标
Plug 'vim-airline/vim-airline'
"Plug 'ryanoasis/vim-devicons'

" 语法检查
Plug 'dense-analysis/ale'

" 括号/引号操作
Plug 'tpope/vim-surround'

" Git 集成
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" 快速移动
Plug 'easymotion/vim-easymotion'

" 启动画面
Plug 'mhinz/vim-startify'

" 配色主题 (选择一个即可)
Plug 'morhetz/gruvbox'
" Plug 'sainnhe/gruvbox-material'
" Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

" 插件结束
call plug#end()

" 启用主题 (根据选择的主题修改)
colorscheme gruvbox

set background=dark

" ========== 文件操作 ==========
nnoremap <leader>w :w<CR>           " 保存
nnoremap <leader>q :q<CR>           " 关闭
nnoremap <leader>wq :wq<CR>         " 保存并关闭
nnoremap <leader>x :x<CR>           " 保存并关闭（同 wq）
nnoremap <leader>e :e $MYVIMRC<CR>  " 编辑配置文件
nnoremap <leader>sv :source $MYVIMRC<CR>  " 重载配置

" ========== 窗口与分屏 ==========
nnoremap <leader>h :split<CR>       " 水平分屏
nnoremap <leader>v :vsplit<CR>      " 垂直分屏
nnoremap <C-h> <C-w>h               " 切换到左侧窗口
nnoremap <C-j> <C-w>j               " 切换到下方窗口
nnoremap <C-k> <C-w>k               " 切换到上方窗口
nnoremap <C-l> <C-w>l               " 切换到右侧窗口

" 调整窗口大小
nnoremap <C-Left> :vertical resize -5<CR>
nnoremap <C-Right> :vertical resize +5<CR>
nnoremap <C-Up> :resize -5<CR>
nnoremap <C-Down> :resize +5<CR>

" ========== 缓冲区管理 ==========
nnoremap <Tab> :bnext<CR>           " 下一个缓冲区
nnoremap <S-Tab> :bprevious<CR>      " 上一个缓冲区
nnoremap <leader>bd :bd<CR>          " 关闭当前缓冲区

" ========== 搜索与导航 ==========
nnoremap <leader>n :nohlsearch<CR>   " 清除搜索高亮
nnoremap n nzzzv                    " 搜索时居中显示
nnoremap N Nzzzv

" 快速跳转
nnoremap <leader>j <C-d>zz          " 向下半页并居中
nnoremap <leader>k <C-u>zz          " 向上半页并居中

" ========== 常用操作 ==========
" 在正常模式下按 jj 退出插入模式
inoremap jj <Esc>

" 快速保存并退出插入模式
inoremap <C-s> <Esc>:w<CR>

" 复制当前文件路径
nnoremap <leader>yp :let @+=expand("%:p")<CR>

" Y 复制到行尾（与 D、C 行为一致）
nnoremap Y y$

" 粘贴时不覆盖寄存器
xnoremap p "_dP

" ========== 插件快捷键 ==========
" NERDTree
nnoremap <leader>nt :NERDTreeToggle<CR>

" FZF
nnoremap <leader>ff :Files<CR>
nnoremap <leader>fg :Rg<CR>
nnoremap <leader>fb :Buffers<CR>
nnoremap <leader>fh :History<CR>

" Git
nnoremap <leader>gs :Git<CR>
nnoremap <leader>gd :Gdiffsplit<CR>

" ============================================
" vim-gitgutter 快捷键配置
" ============================================

" 基础操作（最常用）
nnoremap <leader>gp :GitGutterPreviewHunk<CR>    " 预览当前代码块的差异

" 快速导航
nnoremap <leader>gn :GitGutterNextHunk<CR>       " 跳转到下一个差异块
nnoremap <leader>gN :GitGutterPrevHunk<CR>       " 跳转到上一个差异块

" 批量操作
nnoremap <leader>ga :GitGutterStageAll<CR>       " 暂存所有差异
nnoremap <leader>gA :GitGutterRevertAll<CR>      " 回退所有差异

" 查看状态
nnoremap <leader>g? :GitGutter<CR>               " 显示插件状态
nnoremap <leader>gH :GitGutterQuickFix<CR>       " 将所有差异块加入 QuickFix 列表

" 开关功能
nnoremap <leader>gt :GitGutterToggle<CR>         " 开关 GitGutter
