set number
set title
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent
set foldmethod=marker
set hidden
set whichwrap=b,s,h,l,<,>,[,]
set showmatch
set clipboard=unnamed,unnamedplus
set t_Co=256
set wildmenu
set wildmode=full
set nocompatible
set backspace=indent,eol,start " 行頭、改行、手前の文字削除
set encoding=utf-8
scriptencoding utf-8
set laststatus=2
set updatetime=250
set cursorline " カーソルラインをハイライト

" search
set incsearch " インクリメンタルサーチ. １文字入力毎に検索を行う
set ignorecase " 検索パターンに大文字小文字を区別しない
set smartcase " 検索パターンに大文字を含んでいたら大文字小文字を区別する
set hlsearch " 検索結果をハイライト

colorscheme jellybeans
filetype plugin indent on
syntax on

" autocmd QuickFixCmdPost *grep* cwindow
augroup QuickFixCmd
  autocmd!
  autocmd QuickFixCmdPost *grep* cwindow
augroup END

" 挿入モードでクリップボードからペーストする時に自動でインデントさせないようにする
if &term =~ "xterm"
  let &t_SI .= "\e[?2004h"
  let &t_EI .= "\e[?2004l"
  let &pastetoggle = "\e[201~"

  function XTermPasteBegin(ret)
    set paste
    return a:ret
  endfunction

  inoremap <special> <expr> <Esc>[200~ XTermPasteBegin("")
endif
