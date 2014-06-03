"---------- Plugins ---------------------------------------------{{{1

"首先，加载vundle!
set nocompatible               " be iMproved, required
filetype off                   " required!

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

"let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"solarized配色
Plugin 'altercation/vim-colors-solarized'

"自动补全插件
Plugin 'Shougo/neocomplcache'

"自动关闭括号/引号等
Plugin 'jiangmiao/auto-pairs'

"All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"----------------------------------------------------------------1}}}

"-------------- 基本 --------------------------------------------{{{1

syntax on "开启语法高亮
set nu "显示行号
"关闭gui右边边框
set go=
"开启鼠标定位
set mouse=a
"关闭报警声音
set noeb
"高亮搜索结果
set hlsearch
set incsearch
"关闭救助贫困儿童的提示消息
set shortmess=atI
set guifont=Monaco:h12 "设置字体

"solarized配色设置
let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:solarized_contrast="high"
let g:solarized_visibility="high"
set background=dark "暗色背景
colorscheme solarized "设置配色
set cul "高亮当前行

"----------------------------------------------------------------1}}}

"-------------- tab 键 ------------------------------------------{{{1

"将输入的tab自动展开成空格
set expandtab
"tab长度设置为4个空格的长度
set tabstop=4
"设置为逢4个空格进1个tab
set softtabstop=4
"每一级自动缩进的空格数为4
set shiftwidth=4

"----------------------------------------------------------------1}}}

"------------------- 编码 ---------------------------------------{{{1

"vim内部的编码
set encoding=utf-8
"新建一个文件的默认编码
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
"输出到终端的编码
set termencoding=utf-8
"vim写入文件的时候采用的编码
set fileencoding=utf-8

"----------------------------------------------------------------1}}}

"----------------- 插件配置 -------------------------------------{{{1

"""""""""""""""""""""neocomplcache"""""""""""""""""
let g:neocomplcache_enable_at_startup = 1

"""""""""""""""""""""neocomplcache"""""""""""""""""

"----------------------------------------------------------------1}}}
