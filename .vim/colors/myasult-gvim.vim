" NOTE: this is not the original file! converted for use with xterm-256
" Vim color file
" Maintainer:   A. Sinan Unur
" Last Change:  2001/10/04

" Dark color scheme

set background=light
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="256_myasu1dark_pritn"

" GUI Color Scheme
hi Normal       cterm=NONE     ctermfg=black    ctermbg=254	 guibg=white guifg=black
hi NonText      cterm=NONE     ctermfg=239   ctermbg=254
hi Function     cterm=NONE     ctermfg=52   ctermbg=254
" ?
hi Statement    cterm=NONE     ctermfg=16    ctermbg=254	 gui=bold
" zavorky apod
hi Special      cterm=NONE     ctermfg=black    ctermbg=254	 gui=bold
" naprikla "neco" v PHP
hi Constant     cterm=NONE     ctermfg=18   ctermbg=254	guifg=darkred	
hi Comment      cterm=NONE     ctermfg=23    ctermbg=254	 guifg=darkcyan
hi Preproc      cterm=NONE     ctermfg=28    ctermbg=254	
" cterm v tomto scriptu, array v PHP
hi Type         cterm=NONE     ctermfg=52   ctermbg=254 guifg=darkgreen	
hi Identifier   cterm=BOLD     ctermfg=88    ctermbg=254	
hi StatusLine   cterm=BOLD     ctermfg=15    ctermbg=58	
hi StatusLineNC cterm=NONE     ctermfg=black     ctermbg=252	
hi Visual       cterm=NONE     ctermfg=15    ctermbg=35	
hi Search       cterm=BOLD     ctermbg=226
"ctermfg=19	
hi VertSplit    cterm=NONE     ctermfg=15    ctermbg=241	
hi Directory    cterm=NONE     ctermfg=2    ctermbg=254	
hi WarningMsg   cterm=STANDOUT ctermfg=20    ctermbg=11	
hi Error        cterm=NONE     ctermfg=15    ctermbg=9	
hi Cursor                      ctermfg=15    ctermbg=47   guibg=darkgray	
hi LineNr       cterm=NONE     ctermfg=252   ctermbg=0	
hi ModeMsg      cterm=NONE     ctermfg=21    ctermbg=15	
hi Question     cterm=NONE     ctermfg=24    ctermbg=233	 guibg=darkgray
hi CursorLine   cterm=none     ctermbg=lightgray guibg=#F0F0F0
hi CursorColumn cterm=none     ctermbg=lightgray guibg=#F0F0F0
hi Pmenu        ctermbg=248
hi PmenuSel 	 ctermbg=245

hi diffChange  ctermbg=24
hi diffRemove  ctermbg=52 
hi diffAdd     ctermbg=22
hi DiffText 	term=reverse cterm=bold  cterm=bold ctermbg=27	

" vimdiff - from diff command
hi diffChanged  ctermbg=24
hi diffRemoved  ctermbg=52 
hi diffAdded     ctermbg=22
