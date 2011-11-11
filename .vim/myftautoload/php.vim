"makra pro Vim k editaci HTML a php
"Pavel Satrapa & spol., 1. èervence 2001
"editoval Lukas Drbal
"--------------------------------------------------------------------------
"entity
imap ,sp &nbsp;

"let php_sql_query = 1
"let php_htmlInStrings = 1
"let php_asp_tags = 1
"let php_parent_error_close = 1
"let php_parent_error_open = 1
"let php_folding = 1

let php_sql_query = 0
let php_htmlInStrings = 0
let php_asp_tags = 0
let php_parent_error_close = 0
let php_parent_error_open = 0
let php_folding = 0
syntax enable

set filetype=php

set noignorecase
set smartcase

" let g:InsertTabWrapperPrefMethod = 'noomni' " preferovana metoda doplnovani na tabulator bude omni
" inoremap <tab> <c-r>=InsertTabWrapper ("forward", 'prefer')<cr>
" inoremap <s-tab> <c-r>=InsertTabWrapper ("backward", 'omni')<cr>

"písma
imap ,tt <CODE></CODE><C-O>F<
vmap ,tt <Esc>`>a</CODE><Esc>`<i<CODE><Esc>
imap ,ee <EM></EM><C-O>F<
vmap ,ee <Esc>`>a</EM><Esc>`<i<EM><Esc>
imap ,bb <STRONG></STRONG><C-O>F<
vmap ,bb <Esc>`>a</STRONG><Esc>`<i<STRONG><Esc>

"odstavec
imap ,pp <P></P><C-O>F<

"prostøedí pro zmìnu vzhledu textu
imap ,cen <DIV ALIGN="CENTER"><CR><CR></DIV><Up>
vmap ,cen <Esc>`>a</DIV><Esc>`<i<DIV ALIGN="CENTER"><Esc>
imap ,quo <BLOCKQUOTE><CR><CR></BLOCKQUOTE><Up>
vmap ,quo <Esc>`>a</BLOCKQUOTE><Esc>`<i<BLOCKQUOTE><Esc>
imap ,ver <PRE><CR><CR></PRE><Up>
vmap ,ver <Esc>`>a</PRE><Esc>`<i<PRE><Esc>
imap ,qv <BLOCKQUOTE><PRE><CR><CR></PRE></BLOCKQUOTE><Up>
vmap ,qv <Esc>`>a</PRE></BLOCKQUOTE><Esc>`<i<BLOCKQUOTE><PRE><Esc>

"tabulka, obrázek, odkaz
imap ,tab <TABLE BORDER="0"><CR><TR><TD></TD><TD></TD></TR><CR></TABLE><Esc>k02f>a
imap ,img <IMG SRC="" ALT="" WIDTH="" HEIGHT="" BORDER="0"/><Esc>9F"i
imap ,aa <A HREF=""></A><C-O>F"
vmap ,aa <Esc>`>a</A><Esc>`<i<A HREF=""><Left><Left>

"uzavøení; napi¹te <COSI> a pou¾ijte ,.
imap ,. <Esc>F<yef>pa><Esc>F<a/<Left><Left>

"posun pøed/za znaèku
map <M-Right> f>
imap <M-Right> <C-O>f><Right>
map <M-Left> F<
imap <M-Left> <C-O>F<

"make
"imap <F5> <ESC>:w<CR>:!php %<CR>
"map <F5> :w<CR>:!php %<CR>

"imap <S-F5> <ESC>:w<CR>:!php -l %<CR>
"map <S-F5> :w<CR>:!php -l %<CR>
