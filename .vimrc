" vim include
source $VIMRUNTIME/macros/matchit.vim

augroup PluginInstall autocmd!
	autocmd VimEnter * if dein#check_install() | call dein#install() | endif
augroup END

" plugin install directory
let s:plugin_dir = expand('~/.vim/bundle/')
" dein.vimをインストールするディレクトリをランタイムパスへ追加
let s:dein_dir = s:plugin_dir . 'repos/github.com/Shougo/dein.vim'
execute 'set runtimepath+=' . s:dein_dir

" dein.vimがなければinstall`
if !isdirectory(s:dein_dir)
	call mkdir(s:dein_dir, 'p')
	silent execute printf('!git clone %s %s', 'https://github.com/Shougo/dein.vim', s:dein_dir)
endif

if dein#load_state(s:plugin_dir)
	call dein#begin(s:plugin_dir)

  let g:rc_dir    = expand("~/.config/nvim/")
  let s:toml      = g:rc_dir . 'dein.toml'
  let s:lazy_toml = g:rc_dir . 'dein_lazy.toml'

  " TOML を読み込み、キャッシュしておく
  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

	call dein#end()
	call dein#save_state()
endif

runtime! userautoload/init/*.vim
runtime! userautoload/plugins/*.vim
