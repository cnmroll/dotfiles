set number
set title
set tabstop=2
set cursorline
set shiftwidth=2
set autoindent
set foldmethod=marker
set smartindent
set hidden
set whichwrap=b,s,h,l,<,>,[,]
set showmatch
set clipboard=unnamed,unnamedplus
set laststatus=2
set t_Co=256
set wildmenu
set wildmode=full
set nocompatible
set backspace=indent,eol,start " 行頭、改行、手前の文字削除
set encoding=utf-8
scriptencoding utf-8
set laststatus=2
set updatetime=250

colorscheme jellybeans
filetype plugin indent on
syntax on

" autocmd QuickFixCmdPost *grep* cwindow
augroup QuickFixCmd
  autocmd!
  autocmd QuickFixCmdPost *grep* cwindow
augroup END
