" vim include
source $VIMRUNTIME/macros/matchit.vim

augroup PluginInstall
	autocmd!
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

	call dein#add('Shougo/dein.vim') " プラグイン管理

	call dein#add('Shougo/unite.vim') " 統合ユーザインタフェース
	call dein#add('ujihisa/unite-colorscheme', {
				\	'depends' : 'Shougo/unite.vim'
				\}) " colorscheme一覧 :Unite -auto-preview colorscheme
	call dein#add('Shougo/neomru.vim', {
				\	'depends' : 'Shougo/unite.vim'
				\}) " 最近開いたファイルの一覧表示 :Unite file_mru

	" neocomplete
	call dein#add('Shougo/neocomplete.vim', {
				\ 'if' : has('lua')
				\ }) " 補完
	call dein#add('violetyk/neocomplete-php.vim', {
				\ 'depends' : 'Shougo/neocomplete.vim'
				\ }) " neocomplete snippet php 日本語
	call dein#add('Shougo/neosnippet', {
				\ 'depends' : 'Shougo/neocomplete.vim'
				\ })
	call dein#add('Shougo/neosnippet-snippets', {
				\ 'depends' : 'Shougo/neocomplete.vim'
				\ })
	call dein#add('ujihisa/neco-look') " 英単語候補追加

	" Ruby on Rails
	call dein#add('tpope/vim-rails') " rails extension
	call dein#add('https://github.com/tpope/vim-endwise') " ruby end auto

	" HTML, CSS, SCSS
	call dein#add('AtsushiM/sass-compile.vim') " sass -> css 自動コンパイル
	call dein#add('mattn/emmet-vim') " html簡略化
	call dein#add('tell-k/vim-browsereload-mac') " ブラウザ自動更新

	" syntax highlight
	call dein#add('slim-template/vim-slim') " slim syntax highlight
	call dein#add('hail2u/vim-css3-syntax') " css3 色
	call dein#add('jelera/vim-javascript-syntax') " js 色
	call dein#add('vim-scripts/smarty-syntax', {'on_ft' : 'php'}) " smarty syntax highlight
	call dein#add('othree/html5.vim') " html5 色

	" colorscheme
	call dein#add('nanotech/jellybeans.vim') " jellybeans colorscheme

	" vim拡張
	call dein#add('kana/vim-textobj-user') " original テキストオブジェクト追加
	call dein#add('kana/vim-textobj-entire') " 全体を表すテキストオブジェクトの追加
	call dein#add('LeafCage/yankround.vim') " yank 管理
	call dein#add('itchyny/lightline.vim') " ステータスライン強化
	call dein#add('Shougo/context_filetype.vim') " カレント行のfiletype検出
	call dein#add('nathanaelkane/vim-indent-guides') " indent可視化
	call dein#add('bronson/vim-trailing-whitespace') " 文末のスペース検出
	call dein#add('scrooloose/nerdtree') " tree file

	call dein#add('scrooloose/syntastic') " シンタックスエラーチェック
	call dein#add('tpope/vim-surround') " 指定文字で囲む
	call dein#add('AndrewRadev/switch.vim') " 該当単語をトグル

	call dein#end()
	call dein#save_state()
endif

runtime! userautoload/init/*.vim
runtime! userautoload/plugins/*.vim
