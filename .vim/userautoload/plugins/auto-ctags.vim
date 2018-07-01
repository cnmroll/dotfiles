let g:auto_ctags = 1
let g:auto_ctags_directory_list = ['.git', '.svn']
let g:auto_ctags_tags_name = 'tags'
let g:auto_ctags_tags_args = ['--tag-relative=yes', '--recurse=yes', '--sort=yes']
let g:auto_ctags_filetype_mode = 1
"set tags+=.svn/tags
"set tags+=.git/tags
"set tags+=.git/*.tags
set tags+=./tags
