"makra pro Vim k editaci HTML textù
"Pavel Satrapa & spol., 1. èervence 2001
"--------------------------------------------------------------------------
"entity
imap ,sp &nbsp;

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
imap ,img <IMG SRC="" ALT="" WIDTH="" HEIGHT="" BORDER="0"><Esc>9F"i
imap ,aa <A HREF=""></A><C-O>F"
vmap ,aa <Esc>`>a</A><Esc>`<i<A HREF=""><Left><Left>

"uzavøení; napi¹te <COSI> a pou¾ijte ,.
imap ,. <Esc>F<yef>pa><Esc>F<a/<Left><Left>

"posun pøed/za znaèku
map <M-Right> f>
imap <M-Right> <C-O>f><Right>
map <M-Left> F<
imap <M-Left> <C-O>F<

setfiletype htmldjango
