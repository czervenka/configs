
" python klasika - standard odsazovani
set shiftwidth=4
set smarttab
set expandtab
set tabstop=4
set mouse=a

set filetype=python

set foldmethod=indent
set foldlevel=99

syntax on
filetype on
filetype plugin indent on


au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"

set completeopt=menuone,longest,preview

let g:pyflakes_use_quickfix = 0

map <leader>j :RopeGotoDefinition<CR>
map <leader>r :RopeRename<CR>
map <F5> :w<cr>:!python %<cr>
imap <F5> <esc>:w<cr>:!python %<cr>

let g:ropevim_local_prefix="<c-space>"
let g:ropevim_enable_shortcuts=1
let g:ropevim_extended_autocomplete=1
let g:ropevim_vim_completion=1
let g:ropevim_goto_def_newwin=1
let g:ropevim_guess_project=1
