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

" /////////////////////////////////////////////////////////////////////////////////////////////////
" // Window
" /////////////////////////////////////////////////////////////////////////////////////////////////
nnoremap [window]    <Nop>
nmap     s [window]
nnoremap [window] <Nop>
nnoremap [window]j <C-w>j
nnoremap [window]k <C-w>k
nnoremap [window]l <C-w>l
nnoremap [window]h <C-w>h
nnoremap [window]J <C-w>J
nnoremap [window]K <C-w>K
nnoremap [window]L <C-w>L
nnoremap [window]H <C-w>H
nnoremap [window]n gt
nnoremap [window]p gT
nnoremap [window]r <C-w>r
nnoremap [window]= <C-w>=
nnoremap [window]w <C-w>w
nnoremap [window]o <C-w>_<C-w>|
nnoremap [window]O <C-w>=
nnoremap [window]N :<C-u>bn<CR>
nnoremap [window]P :<C-u>bp<CR>
nnoremap [window]t :<C-u>tabnew<CR>
nnoremap [window]T :<C-u>Unite tab<CR>
nnoremap [window]s :<C-u>sp<CR>
nnoremap [window]v :<C-u>vs<CR>
nnoremap [window]q :<C-u>q<CR>
nnoremap [window]Q :<C-u>bd<CR>
nnoremap [window]b :<C-u>Denite buffer_tab -buffer-name=file<CR>
nnoremap [window]B :<C-u>Denite buffer -buffer-name=file<CR>
