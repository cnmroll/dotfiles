let g:ale_sign_column_always = 1
" let g:ale_sign_error = '!!'
" let g:ale_sign_warning = '=='

" status lineの表示
" let g:lightline = {
"   \'active': {
"   \  'left': [
"   \    ['mode', 'paste'],
"   \    ['readonly', 'filename', 'modified', 'ale'],
"   \  ]
"   \},
"   \'component_function': {
"   \  'ale': 'ALEGetStatusLine'
"   \}
"   \ }
"
" let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']

" error間の移動
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)


" ファイル保存時のチェック
let g:ale_lint_on_save = 1

" ファイル変更時のチェック
let g:ale_lint_on_text_changed = 1

" ファイルオープン時のチェック
let g:ale_lint_on_enter = 0

" errorの表示場所
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1


" errorリストを開く
let g:ale_open_list = 1

" エラーと警告がなくなっても開いたままにする
let g:ale_keep_list_window_open = 0
