function! myspacevim#before() abort
syntax enable
filetype plugin indent on
endfunction
let g:spacevim_disabled_plugins = ['deoplete']
function! myspacevim#after() abort
    " you can remove key binding in bootstrap_after function
" Set up :make to use fish for syntax checking.
compiler fish

let g:preview_uml_url='http://localhost:8888'
" Set this to have long lines wrap inside comments.
setlocal textwidth=79
" Enable folding of block structures in fish.
setlocal foldmethod=expr
endfunction
