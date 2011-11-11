set ft=sql
map <F5> :w<cr>:!cat % \|psql<cr>
imap <F5> <esc>:w<cr>:!cat % \|psql<cr>i
