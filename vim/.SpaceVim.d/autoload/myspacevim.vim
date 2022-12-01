function! myspacevim#before() abort
  syntax enable
  filetype plugin indent on
  let g:calendar_google_calendar = 1
  let g:calendar_google_task = 1
endfunction
function! myspacevim#after() abort
      " you can remove key binding in bootstrap_after function
  " Set up :make to use fish for syntax checking.
  compiler fish
  " Set this to have long lines wrap inside comments.
  setlocal textwidth=79
  " Enable folding of block structures in fish.
  setlocal foldmethod=expr
  "uml preview
  let g:preview_uml_url='http://localhost:8888'

  source ~/.cache/calendar.vim/credentials.vim
endfunction
