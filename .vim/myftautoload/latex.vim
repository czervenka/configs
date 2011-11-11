"makra pro Vim k editaci zdrojových textù LaTeXu
"Pavel Satrapa & spol., 1. èervence 2001
"--------------------------------------------------------------------------
"písma
imap ,tt \texttt{}<Left>
vmap ,tt <Esc>`>a}<Esc>`<i\texttt{<Esc>%
imap ,ee \emph{}<Left>
vmap ,ee <Esc>`>a}<Esc>`<i\emph{<Esc>%
imap ,bb \textbf{}<Left>
vmap ,bb <Esc>`>a}<Esc>`<i\textbf{<Esc>%

"uzavøení do uvozovek
imap ,uv \uv{}<Left>
vmap ,uv <Esc>`>a}<Esc>`<i\uv{<Esc>%

"prostøedí
imap ,cen \begin{center}<CR><CR>\end{center}<Up>
vmap ,cen <Esc>`>a\end{center}<Esc>`<i\begin{center}<Esc>F\
imap ,quo \begin{quote}<CR><CR>\end{quote}<Up>
vmap ,quo <Esc>`>a\end{quote}<Esc>`<i\begin{quote}<Esc>F\
imap ,tab \begin{tabular}{ll}<CR><CR>\end{tabular}<Up>
imap ,ver \begin{verbatim}<CR><CR>\end{verbatim}<Up>
vmap ,ver <Esc>`>a\end{verbatim}<Esc>`<i\begin{verbatim}<Esc>F\
imap ,qv \begin{quote}\begin{verbatim}<CR><CR>\end{verbatim}\end{quote}<Up>
vmap ,qv <Esc>`>a\end{verbatim}\end{quote}<Esc>`<i\begin{quote}\begin{verbatim}<Esc>2F\

"plovoucí objekty
imap ,tbl \begin{table}[htp]<CR><CR>\caption{}<CR>\label{}<CR>\end{table}<C-O>3k
vmap ,tbl <Esc>`>a<CR>\caption{}<CR>\label{}<CR>\end{table}<Esc>`<i\begin{table}[htp]<CR><Esc><Up>
imap ,fig \begin{figure}[htp]<CR><CR>\caption{}<CR>\label{}<CR>\end{figure}<C-O>3k
vmap ,fig <Esc>`>a<CR>\caption{}<CR>\label{}<CR>\end{figure}<Esc>`<i\begin{figure}[htp]<CR><Esc><Up>

"uzavøení; napi¹te \begin{cosi} a pou¾ijte ,.
imap ,. <Esc>F{lyt}f}a\end{}<Esc>PF\i

"poskakuje pøed (\) a za (}) TeXovské konstrukce
map <M-Right> f}
imap <M-Right> <C-O>f}<Right>
map <M-Left> F\
imap <M-Left> <C-O>F\

"pro pøeklad a zobrazení chyb
set makeprg=cslatex\ --interaction\ nonstopmode\ %
set shellpipe=>&
set errorformat=%E!\ LaTeX\ %trror:\ %m,
	\%E!\ %m,
	\%+WLaTeX\ %.%#Warning:\ %.%#line\ %l%.%#,
	\%+W%.%#\ at\ lines\ %l--%*\\d,
	\%WLaTeX\ %.%#Warning:\ %m,
	\%Cl.%l\ %m,
	\%+C\ \ %m.,
	\%+C%.%#-%.%#,
	\%+C%.%#[]%.%#,
	\%+C[]%.%#,
	\%+C%.%#%[{}\\]%.%#,
	\%+C<%.%#>%.%#,
	\%C\ \ %m,
	\%-GSee\ the\ LaTeX%m,
	\%-GType\ \ H\ <return>%m,
	\%-G\ ...%.%#,
	\%-G%.%#\ (C)\ %.%#,
	\%-G(see\ the\ transcript%.%#),
	\%-G%*\\s,
	\%+O(%f)%r,
	\%+P(%f%r,
	\%+P\ %\\=(%f%r,
	\%+P%*[^()](%f%r,
	\%+P[%\\d%[^()]%#(%f%r,
	\%+Q)%r,
	\%+Q%*[^()])%r,
	\%+Q[%\\d%*[^()])%r

"moje vlastní makra
imap ,img \obrazek{}<Left>
