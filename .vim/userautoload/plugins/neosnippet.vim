let g:neosnippet#enable_snipmate_compatibility = 1

" For conceal markers.
if has('conceal')
	set conceallevel=2 concealcursor=niv
endif
" 独自スニペットディレクトリ指定 対象拡張子のファイル開いて:NeoSnippetEdit
" let g:neosnippet#snippets_directory='~/.vim/bundle/neosnippet-snippets/snippets/'
let g:neosnippet#snippets_directory='~/.vim/snippets/'
" neocomplete のスペニット優先度
" call neocomplete#custom_source('neosnippet', 'rank',  400)
" neco-look の有効拡張子設定
let g:neocomplete#text_mode_filetypes = {
            \ 'rst': 1,
            \ 'markdown': 1,
            \ 'gitrebase': 1,
            \ 'gitcommit': 1,
            \ 'vcs-commit': 1,
            \ 'hybrid': 1,
            \ 'text': 1,
            \ 'help': 1,
            \ 'tex': 1,
            \ 'php': 1,
            \ 'rb': 1,
            \ 'js': 1,
            \ }
