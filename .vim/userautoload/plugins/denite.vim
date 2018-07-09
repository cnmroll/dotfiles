nnoremap [Denite] <Nop>
nmap ,d [Denite]

nnoremap <silent> [Denite]y :<C-u>Denite neoyank<CR>
nnoremap <silent> [Denite]u :<C-u>Denite file_mru -mode=normal buffer<CR>
nnoremap <silent> [Denite]b :<C-u>Denite buffer<CR>
nnoremap <silent> [Denite]g :<C-u>Denite -auto_preview grep<CR>
nnoremap <silent> [Denite]r :<C-u>Denite -resume -buffer-name=search-buffer-denite<CR>
nnoremap <silent> [Denite]n :<C-u>Denite -resume -buffer-name=search-buffer-denite -select=+1 -immediately<CR>
nnoremap <silent> [Denite]p :<C-u>Denite -resume -buffer-name=search-buffer-denite -select=-1 -immediately<CR>
