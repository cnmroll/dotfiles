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


" /////////////////////////////////////////////////////////////////////////////////////////////////
" // vim-textobj-multiextobj
" /////////////////////////////////////////////////////////////////////////////////////////////////
omap imb <Plug>(textobj-multitextobj-i)
omap amb <Plug>(textobj-multitextobj-a)
vmap imb <Plug>(textobj-multitextobj-i)
vmap amb <Plug>(textobj-multitextobj-a)


" /////////////////////////////////////////////////////////////////////////////////////////////////
" // Gtags
" /////////////////////////////////////////////////////////////////////////////////////////////////

nmap <C-q> <C-w><C-w><C-w>q
nmap <C-g> :Gtags
nmap <C-l> :Gtags -f %<CR>
nmap <C-j> :GtagsCursor<CR>
nmap <C-k> :Gtags -r <C-r><C-w><CR>
nmap <C-n> :cn<CR>
nmap <C-p> :cp<CR>
