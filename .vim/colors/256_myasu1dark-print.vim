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
let g:colors_name="256_myasu1dark-print"

" GUI Color Scheme
hi Normal       cterm=NONE     ctermfg=black    ctermbg=255	
hi NonText      cterm=NONE     ctermfg=239   ctermbg=254
hi Function     cterm=BOLD     ctermfg=52   ctermbg=255
" ?
hi Statement    cterm=BOLD     ctermfg=25    ctermbg=255	
" zavorky apod
hi Special      cterm=NONE     ctermfg=black    ctermbg=255	
" naprikla "neco" v PHP
hi Constant     cterm=NONE     ctermfg=18   ctermbg=255
hi Comment      cterm=NONE     ctermfg=23    ctermbg=255	
hi Preproc      cterm=NONE     ctermfg=28    ctermbg=255	
" cterm v tomto scriptu, array v PHP
hi Type         cterm=NONE     ctermfg=52   ctermbg=255
hi Identifier   cterm=BOLD     ctermfg=88    ctermbg=255	
hi StatusLine   cterm=BOLD     ctermfg=15    ctermbg=31
hi StatusLineNC cterm=NONE     ctermfg=0     ctermbg=240	
hi Visual       cterm=NONE     ctermfg=15    ctermbg=35	
hi Search       cterm=BOLD     ctermbg=226
"ctermfg=19	
hi VertSplit    cterm=NONE     ctermfg=15    ctermbg=241	
hi Directory    cterm=NONE     ctermfg=2    ctermbg=254	
hi WarningMsg   cterm=STANDOUT ctermfg=20    ctermbg=11	
hi Error        cterm=NONE     ctermfg=15    ctermbg=9	
hi Cursor                      ctermfg=15    ctermbg=47	
hi LineNr       cterm=NONE     ctermfg=52   ctermbg=252
hi ModeMsg      cterm=NONE     ctermfg=21    ctermbg=15	
hi Question     cterm=NONE     ctermfg=24    ctermbg=233	
hi CursorLine   cterm=none     ctermbg=254
hi CursorColumn cterm=none     ctermbg=254
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
