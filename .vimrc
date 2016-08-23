" vim include
source $VIMRUNTIME/macros/matchit.vim

" NeoBundle Start!
filetype off
if has('vim_starting')
	set runtimepath+=~/.vim/bundle/neobundle.vim
	call neobundle#begin(expand('~/.vim/bundle/'))
endif

NeoBundle 'ujihisa/unite-colorscheme' " colorscheme一覧 :Unite -auto-preview colorscheme
NeoBundle 'scrooloose/syntastic' " シンタックスエラーチェック
NeoBundle 'https://github.com/tpope/vim-endwise' " ruby end auto
NeoBundle 'nanotech/jellybeans.vim' " jellybeans colorscheme
NeoBundle 'scrooloose/nerdtree' " tree file
NeoBundle 'tpope/vim-rails' " rails extension
NeoBundle 'tomtom/tcomment_vim' " ファイルタイプ別自動コメント
NeoBundle 'nathanaelkane/vim-indent-guides' " indent可視化
NeoBundle 'bronson/vim-trailing-whitespace' " 文末のスペース検出
NeoBundle 'Shougo/unite.vim' " 統合ユーザインタフェース
NeoBundle 'ujihisa/unite-colorscheme' " color scheme list
NeoBundle 'tell-k/vim-browsereload-mac' " ブラウザ自動更新
NeoBundle 'tpope/vim-surround' " 指定文字で囲む
NeoBundle 'othree/html5.vim' " html5 色
NeoBundle 'kana/vim-textobj-user' " original テキストオブジェクト追加
NeoBundle 'kana/vim-textobj-entire' " 全体を表すテキストオブジェクトの追加
NeoBundle 'LeafCage/yankround.vim' " yank 管理
NeoBundle 'itchyny/lightline.vim' " ステータスライン強化
NeoBundle 'hail2u/vim-css3-syntax' " css3 色
NeoBundle 'jelera/vim-javascript-syntax' " js 色
NeoBundle 'AtsushiM/sass-compile.vim' " sass -> css 自動コンパイル
NeoBundle 'mattn/emmet-vim' " html簡略化

NeoBundle 'AndrewRadev/switch.vim' " 該当単語をトグル
NeoBundle 'slim-template/vim-slim' " slim syntax highlight

NeoBundle 'Shougo/neocomplete.vim' " 補完
NeoBundle 'violetyk/neocomplete-php.vim' " neocomplete snippet php 日本語
" neocomplete snippets
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'ujihisa/neco-look' " neocomplete に英単語候補表示
NeoBundle 'Shougo/context_filetype.vim' " カレント行のfiletype検出
NeoBundle 'vim-scripts/smarty-syntax' " smarty syntax highlight
NeoBundle 'Shougo/neomru.vim' " 最近開いたファイルの一覧表示 :Unite file_mru

call neobundle#end()
NeoBundleCheck

runtime! userautoload/init/*.vim
runtime! userautoload/plugins/*.vim
