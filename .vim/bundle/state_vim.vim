if g:dein#_cache_version !=# 100 || g:dein#_init_runtimepath !=# '/Users/lotus/.vim,/usr/local/share/vim/vimfiles,/usr/local/share/vim/vim81,/usr/local/share/vim/vim81/pack/dist/opt/matchit,/usr/local/share/vim/vimfiles/after,/Users/lotus/.vim/after,/Users/lotus/.vim/bundle/repos/github.com/Shougo/dein.vim' | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/Users/lotus/.vimrc', '/Users/lotus/.config/nvim/dein.toml', '/Users/lotus/.config/nvim/dein_lazy.toml'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/Users/lotus/.vim/bundle'
let g:dein#_runtime_path = '/Users/lotus/.vim/bundle/.cache/.vimrc/.dein'
let g:dein#_cache_path = '/Users/lotus/.vim/bundle/.cache/.vimrc'
let &runtimepath = '/Users/lotus/.vim,/usr/local/share/vim/vimfiles,/Users/lotus/.vim/bundle/repos/github.com/Shougo/dein.vim,/Users/lotus/.vim/bundle/.cache/.vimrc/.dein,/usr/local/share/vim/vim81,/Users/lotus/.vim/bundle/.cache/.vimrc/.dein/after,/usr/local/share/vim/vim81/pack/dist/opt/matchit,/usr/local/share/vim/vimfiles/after,/Users/lotus/.vim/after'
