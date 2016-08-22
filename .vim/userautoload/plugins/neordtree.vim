let NERDTreeShowHidden = 1
" 引数なしで実行したとき、NERDTreeを実行する
let file_name = expand("%:p")
if has('vim_starting') &&  file_name == ""
	autocmd VimEnter * call ExecuteNERDTree()
endif

let g:NERDTreeMapOpenVSplit ="v"
let g:NERDTreeMapOpenSplit = "s"

autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif"}}}
