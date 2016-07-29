"---------- Plugins ---------------------------------------------{{{1

"首先，加载vundle!
set nocompatible               " be iMproved, required
filetype off                   " required!

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"A dark theme for vim
Plugin 'dracula/vim'

"Vim plugin, insert or delete brackets, parens, quotes in pair
Plugin 'jiangmiao/auto-pairs'

"Powerline is a statusline plugin for vim
Plugin 'Lokaltog/powerline'

"Make Vim play nicely with iTerm 2 and tmux
Plugin 'sjl/vitality.vim'

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
"支持退格键
set backspace=indent,eol,start
set guifont=Monaco\ for\ Powerline:h13 "设置字体

"dracula配色设置
color dracula

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

""""""""""""""""""powerline""""""""""""""""""""""""
set laststatus=2
source ~/.vim/bundle/powerline/powerline/bindings/vim/plugin/powerline.vim

"""""""""""""""""""""cscope""""""""""""""""""""""""
if has("cscope")
  set csprg=/usr/local/bin/cscope
  set csto=1
  set cst
  set nocsverb
  " add any database in current directory
  if filereadable("cscope.out")
      cs add cscope.out
  endif
  set csverb
endif

nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>

"----------------------------------------------------------------1}}}

