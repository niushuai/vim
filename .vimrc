"====================================
"    FileName: .vimrc
"    Author:   niushuai
"    Email:    niushuai@staff.sina.com.cn
"    Date:     2012-10-21
"=============================================

"关闭vi的一致性模式 避免以前版本的一些Bug和局限
set nocompatible
"配置backspace键工作方式
set backspace=indent,eol,start
"显示行号
set number
"设置在编辑过程中右下角显示光标的行列信息
set ruler
"在状态栏显示正在输入的命令
set showcmd
"设置历史记录条数
set history=1000
"突出现实当前行列
set cursorline
"set cursorcolumn
"设置匹配模式 类似当输入一个左括号时会匹配相应的那个右括号
set showmatch
"设置C/C++方式自动对齐
set autoindent
set cindent
"设置高亮查找+实时定位
set hlsearch
set incsearch
"开启语法高亮功能
syntax enable
"指定配色方案为256色
"set t_Co=256
"使用主题
"colorscheme darkblue
set background=dark
colorscheme solarized
"设置搜索时忽略大小写
"set ignorecase
"设置在Vim中可以使用鼠标 防止在Linux终端下无法拷贝
set mouse=a
"启动全屏
au GUIEnter * simalt ~x
"设置Tab宽度
set tabstop=2
"设置自动对齐空格数
set shiftwidth=2
"设置按退格键时可以一次删除2个空格
set softtabstop=2
"设置按退格键时可以一次删除2个空格
set smarttab
"设置编码方式
"自动判断编码时 依次尝试一下编码
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
"检测文件类型
filetype on
"针对不同的文件采用不同的缩进方式
filetype indent on
"允许插件
filetype plugin on
"启动智能补全
filetype plugin indent on

let g:MyName = "niushuai@SINA"

" =================Vundle插件管理===============
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
"Vundle配置必须 开启插件
filetype plugin indent on

"使用Vundle来管理Vundle
Bundle 'gmarik/vundle'

"1. PowerLine插件 状态栏增强展示
Bundle 'Lokaltog/vim-powerline'
"vim有一个状态栏 加上powline则有两个状态栏
set laststatus=2
set t_Co=256
let g:Powline_symbols='fancy'

"2. taglist
Bundle 'taglist.vim'
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
map <F3> :Tlist<CR>

"  =============================================
