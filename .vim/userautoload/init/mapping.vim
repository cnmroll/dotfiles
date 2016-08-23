" nnoremap <CR> A<CR><ESC>

" default keymap
nnoremap <silent>p :set paste<CR>p:set nopaste<CR>
nnoremap <silent>P :set paste<CR>P:set nopaste<CR>
nnoremap <silent>o :call append(expand('.'), '')<CR>ji
nnoremap <silent>O :call append(line('.')-1, '')<CR>ki

" ************************************************************************
" insertmode keymapD
" ************************************************************************
nnoremap <silent><C-e> :NERDTreeToggle<CR>
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>


cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

nnoremap ! :Switch<CR>

augroup autoClose
	autocmd Filetype eruby inoremap <buffer> </ </<C-x><C-o>
	autocmd Filetype html inoremap <buffer> </ </<C-x><C-o>
	autocmd Filetype xml inoremap <buffer> </ </<C-x><C-o>
	autocmd!
augroup END


" /////////////////////////////////////////////////////////////////////////////////////////////////
" // neosnippet
" /////////////////////////////////////////////////////////////////////////////////////////////////
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
" SuperTab like snippets behavior.
imap <expr><TAB> pumvisible() ? "\<C-n>" : neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" /////////////////////////////////////////////////////////////////////////////////////////////////
" // neocomplete
" /////////////////////////////////////////////////////////////////////////////////////////////////
" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()
func s:my_cr_function()
  " return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction


" <TAB>: completion.
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"


" /////////////////////////////////////////////////////////////////////////////////////////////////
" // yankround
" /////////////////////////////////////////////////////////////////////////////////////////////////
nmap p <Plug>(yankround-p)
xmap p <Plug>(yankround-p)
nmap P <Plug>(yankround-P)
nmap gp <Plug>(yankround-gp)
xmap gp <Plug>(yankround-gp)
nmap gP <Plug>(yankround-gP)
nmap <C-p> <Plug>(yankround-prev)
nmap <C-n> <Plug>(yankround-next)
