"---------- Plugins ---------------------------------------------{{{1

"首先，加载vundle!
set nocompatible               " be iMproved, required
filetype off                   " required!

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"precision colorscheme for the vim text editor
Plugin 'altercation/vim-colors-solarized'

"A code-completion engine for Vim
Plugin 'Valloric/YouCompleteMe'

"Vim plugin, insert or delete brackets, parens, quotes in pair
Plugin 'jiangmiao/auto-pairs'

"Plugin to add tab bar
"Plugin 'TabBar'

"Elegant buffer explorer
Plugin 'fholgado/minibufexpl.vim'

"Source code browser
Plugin 'taglist.vim'

"Powerline is a statusline plugin for vim
Plugin 'Lokaltog/powerline'

"A tree explorer plugin for vim
Plugin 'scrooloose/nerdtree'

"A vim plugin for exploring the source code based on tags
Plugin 'wesleyche/SrcExpl'

"Search Dash.app from Vim
Plugin 'rizzatti/dash.vim'

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
set guifont=Monaco\ for\ Powerline:h12 "设置字体

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

"""""""""""""""""""""YouCompleteMe"""""""""""""""""
let g:ycm_confirm_extra_conf=0
let g:ycm_server_log_level = 'debug'
let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'

"""""""""""""""""""""""""TabBar""""""""""""""""""""
"let g:Tb_MaxSize=2
"let g:Tb_TabWrap=1

"""""""""""""""""""""""""taglist"""""""""""""""""""
" autocmd vimenter * Tlist
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
let Tlist_Show_One_File = 1 "只显示当前文件的tag
let Tlist_Exit_OnlyWindow = 1
let Tlist_Auto_Highlight_Tag=1
let Tlist_Use_Right_Window=1
let Tlist_WinWidth=30

""""""""""""""""""powerline""""""""""""""""""""""""
set laststatus=2
source ~/.vim/bundle/powerline/powerline/bindings/vim/plugin/powerline.vim

""""""""""""""""""""""nerdtree"""""""""""""""""""""
"vim启动的时候打开之
"autocmd vimenter * NERDTree
"打开一个未指明的文件时也打开之
"autocmd vimenter * if !argc() | NERDTree | endif
"最后只剩下它的时候关闭vim
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
"设置其宽度
let NERDTreeWinSize=30

""""""""""""""SrcExpl""""""""""""""""""""""""""""""
"autocmd vimenter * SrcExpl
let g:SrcExpl_winHeight = 8 
let g:SrcExpl_refreshTime = 100 
let g:SrcExpl_jumpKey = "<ENTER>" 
let g:SrcExpl_gobackKey = "<SPACE>" 
let g:SrcExpl_pluginList = [ 
        \ "__Tag_List__", 
        \ "_NERD_tree_" 
    \ ] 
let g:SrcExpl_updateTagsCmd = "/usr/local/bin/ctags --sort=foldcase -R ."

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

nmap <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-@>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>

"----------------------------------------------------------------1}}}

"----------------- 键绑定 ---------------------------------------{{{1
"通过ctrl+h,j,k,l在窗口之间跳转
noremap <C-h> <C-w><left>
noremap <C-j> <C-w><down>
noremap <C-k> <C-w><up>
noremap <C-l> <C-w><right>"

"----------------------------------------------------------------1}}}
