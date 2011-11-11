" Add the virtualenv's site-packages to vim path
let g:ropevim_local_prefix="<c-space>"
let g:ropevim_enable_shortcuts=1
let g:ropevim_extended_autocomplete=1
let g:ropevim_vim_completion=1
let g:ropevim_goto_def_newwin=1
let g:ropevim_guess_project=1

" solarized colorscheme
let g:solarized_contrast="low"

py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = None
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    if os.path.exists(activate_this):
        execfile(activate_this, dict(__file__=activate_this))
EOF


" pathogen autoload bundles
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

filetype off
" speed optimize
set lazyredraw
set nocompatible
set verbose=0
set dir=/dev/shm
set exrc
set history=1000
set backspace=indent,start,eol
set nojoinspaces
set ruler
set showcmd
" show matched brackets - slows the vim
" set noshowmatch
set showmatch
set matchtime=3
set hlsearch
set smartindent
set shiftwidth=4
set smarttab
set expandtab
set tabstop=4
set textwidth=0
set mouse=a
set hls
set nowritebackup
set termencoding=utf8
set background=dark
" see fo-table
set formatoptions=tcqnl
set list
set nowrap
"set listchars=tab:>.,eol:.,nbsp:_

" GVIM
set guifont=terminus\ 8

" timeout VIM waits for multibyte chars
set timeoutlen=500

set ignorecase
set infercase
set smartcase
"set spell spelllang=cs
" set spell spelllang=en

" automaticky incremental sear
set incsearch
"so $HOME/.vim/colors/peachpuff.vim
"set diffopt=iwhite
set diffopt=filler,context:3,iwhite


"printing
set printfont=courier:h8
set printoptions=paper:A4,formfeed:n,left:4mm,top:4mm,right:3mm,bottom:4mm
set printencoding=iso-8859-2


" zalamuj na mezerach
set linebreak
" znak pokracovani zalomene radky
set showbreak=+

" pta se na q! apod.
set confirm

" posouva podle okolniho odsazeni
set shiftround
" status na dva radky

set laststatus=2
" stavova radka obsahuje cislo bufferu, nazev souboru a nejake dalsi informace, ale nevim jake

" pouziva globalni schranku
"set clipboard=unnamed
set clipboard=autoselect


" completition doplni vzdy jen nejdelsi cast, ktera je unikatni a pro zbytek
" zobrazi menu (pokud je vice nez jedna volba)
set completeopt=menu,preview
" prefill first
" set completeopt=menu,preview
" Tab nabidke pro ex
set wildchar=<Tab>
set wildmenu
"set wildmode=longest:list,full
set wildmode=list,full
set wildignore=*.pyc,*.pdf,*.jpg,*.gif

" set statusline=%1*%n:%*\ %<%f\ %y%m%2*%r%*%=[%b,0x%B]\ \ %l/%L,%c%V\ \ %P
set statusline=%{fugitive#statusline()}%1*%n:%*\ %<%f\ %y%m%2*%r%*%=[%b,0x%B]\ \ %l/%L,%c%V\ \ %P
" %<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

set fileencoding=utf8
"set fileencodings=latin2,windows-1250,utf8

set t_Co=256
set cuc
set cul
" colorscheme 256_myasu1dark
colorscheme solarized
" colorscheme 256_myasu1dark-print

" dvojtecka funguje i na ceske klavesnici
"map " :

" minibuffer Explorer settings:new
let g:miniBufExplMapCTabSwitchBufs = 1

"let g:miniBufExplVSplit = 20   " column width in chars
let g:miniBufExplMapWindowNavVim = 1
syntax on

"" Allow Ctrl+PgUp/PgDn in tmux
set t_kh=[1;*~
if &term == "screen-256color"

    " Allow Ctrl+PgUp/PgDn in tmux
    set t_kN=[6;*~
    set t_kP=[5;*~

    set t_ku=OA
    set t_kd=OB
    set t_kr=OC
    set t_kl=OD

    " Home/End keys
    set t_kh=OH
    set t_@7=OF
elseif &term == "xterm"
    set t_ut=
endif

map <S-Right> :tabnext<CR>
map <S-Left> :tabprev<CR>

imap <S-Right> <Esc>:tabnext<CR>i
imap <S-Left> <Esc>:tabprev<CR>i

" kopirovani a ukladani do glob bufferu
map <c-Y> "+y
" vlozeni z globalni schranky
map <c-P> "+gp
imap <c-p> <esc>"+gpi
map \p :read !xclip -selection clipboard -o<cr>
map \y :write !xclip -selection clipboard -i<cr><cr>


map <C-a><C-c> :wq<CR>
imap <C-a><C-c> <ESC>:wq<CR>

map <C-c> :q<CR>
imap <C-c> <ESC>:q<CR>

noremap <leader>v <Plug>TaskList
noremap <Leader>g :call MakeGreen()<cr>

noremap <Leader>l :let g:solarized_contrast="low"\|colorscheme solarized<cr>
noremap <Leader>h :let g:solarized_contrast="high"\|colorscheme solarized<cr>
noremap <Leader>hh :let g:solarized_contrast="high"\|set background=light\|colorscheme solarized<cr>
noremap <Leader>ll :let g:solarized_contrast="high"\|set background=dark\|colorscheme solarized<cr>

noremap  pp "*p
nnoremap <C-S-x> <C-a>

" arrow keys
inoremap OC <right>
inoremap OD <left>
inoremap OB <down>
inoremap OA <up>

" project specific - loadst project.vim from the current dir if exists
try
	source .project.vim
catch /^Vim\%((\a\+)\)\=:E/
endtry

" inoremap <esc> <c-r>=InsertEscWrapper ()<cr>
" 
" function! InsertEscWrapper ()
" 	if pumvisible()
" 		return "\<c-y>"
" 	else
" 		return "\<esc>"
" 	endif
" endfunction
" "comman anchor di<a href="pikr">pa</a>qkb

filetype on
filetype plugin indent on

" When vimrc is edited, reload it
autocmd! bufwritepost .vimrc source ~/.vimrc

augroup filetypedetect
au BufNewFile,BufRead *.wiki setf Wikipedia
augroup END

function! MyPrint()
	colorscheme 256_myasu1dark-print
	hardcopy
	colorscheme 256_myasu1dark
endfunction

noremap <silent> <Leader>w :call ToggleWrap()<CR>
function! ToggleWrap()
    if &wrap
	echo "Wrap OFF"
	setlocal nowrap
	set virtualedit=all
	silent! nunmap <buffer> <Up>
	silent! nunmap <buffer> <Down>
	silent! nunmap <buffer> <Home>
	silent! nunmap <buffer> <End>
	silent! iunmap <buffer> <Up>
	silent! iunmap <buffer> <Down>
	silent! iunmap <buffer> <Home>
	silent! iunmap <buffer> <End>
    else
	echo "Wrap ON"
	setlocal wrap linebreak nolist
	set virtualedit=
	setlocal display+=lastline
	noremap  <buffer> <silent> j      gj
	noremap  <buffer> <silent> k      gk
	noremap  <buffer> <silent> ^      g^
	noremap  <buffer> <silent> $      g$
	noremap  <buffer> <silent> <Up>   gk
	noremap  <buffer> <silent> <Down> gj
	noremap  <buffer> <silent> <Home> g<Home>
	noremap  <buffer> <silent> <End>  g<End>
	inoremap <buffer> <silent> <Up>   <C-o>gk
	inoremap <buffer> <silent> <Down> <C-o>gj
	inoremap <buffer> <silent> <Home> <C-o>g<Home>
	inoremap <buffer> <silent> <End>  <C-o>g<End>
    endif
endfunction


set listchars=tab:\ \ ,trail:\ ,nbsp:\
function! ToggleShowWhites()
	if !exists('b:whites')
		let b:whites = 'off'
	endif

	if b:whites == 'off'
		set listchars=tab:>.,trail:.
		let b:whites = 'on'
	else
		let b:whites = 'off'
		set listchars=tab:\ \ ,trail:\ ,nbsp:\
	endif
endfunction


