nnoremap <silent> ,uy :<C-u>Denite neoyank<CR>
nnoremap <silent> ,uu :<C-u>Denite file_mru -mode=normal buffer<CR>
nnoremap <silent> ,ub :<C-u>Denite buffer<CR>
nnoremap <silent> ,ug :<C-u>Denite -auto_preview grep<CR>
nnoremap <silent> ,ur :<C-u>Denite -resume -buffer-name=search-buffer-denite<CR>
nnoremap <silent> ,un :<C-u>Denite -resume -buffer-name=search-buffer-denite -select=+1 -immediately<CR>
nnoremap <silent> ,up :<C-u>Denite -resume -buffer-name=search-buffer-denite -select=-1 -immediately<CR>
