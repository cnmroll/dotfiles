let g:syntastic_mode_map = {
  \ 'mode': 'active',
  \ 'active_filetypes': ['php']
  \}
let g:syntastic_auto_loc_list = 1
let g:syntastic_php_checkers = ['phpcs']
let g:syntastic_php_phpcs_args='--standard=psr2'

let g:syntastic_scss_checkers = ['sass_lint']
let g:syntastic_sass_checkers = ['sass_lint']
" let g:syntastic_sass_sass_lint_args = '-c ~/.sass-lint.yml'
