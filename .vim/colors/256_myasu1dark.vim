" NOTE: this is not the original file! converted for use with xterm-256
" Vim color file
" Maintainer:   A. Sinan Unur
" Last Change:  2001/10/04

" Dark color scheme

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="256_myasu1dark"

" GUI Color Scheme
"hi Normal       cterm=NONE     ctermfg=15    ctermbg=233 guifg=#c0c0c0 guibg=#080808
hi Normal       cterm=NONE     ctermfg=255 guifg=#c0c0c0 guibg=#080808
hi NonText      cterm=bold     ctermfg=240 guibg=#0F0F0F
hi Function     cterm=BOLD     ctermfg=117 guifg=#f6f27f gui=bold

hi Statement    cterm=BOLD     ctermfg=11 guifg=#edea8e

hi Special      cterm=NONE     ctermfg=14
" tabulatory, prebytecne mezery, apod
hi SpecialKey   cterm=BOLD     ctermbg=16 guibg=#18130f

hi Constant     cterm=NONE     ctermfg=208
hi Comment      cterm=NONE     ctermfg=114
hi Preproc      cterm=NONE     ctermfg=83

hi Type         cterm=NONE     ctermfg=204
hi Identifier   cterm=NONE     ctermfg=14
hi StatusLine   cterm=BOLD     ctermfg=15    ctermbg=58
hi StatusLineNC cterm=NONE     ctermfg=0     ctermbg=252
hi Visual       cterm=NONE     ctermfg=15    ctermbg=35
hi Search       cterm=BOLD     ctermfg=19    ctermbg=190

hi VertSplit    cterm=NONE     ctermfg=15    ctermbg=241
hi Directory    cterm=NONE     ctermfg=10
hi WarningMsg   cterm=STANDOUT ctermfg=20    ctermbg=11
hi Error        cterm=NONE     ctermfg=15    ctermbg=9
hi Cursor                      ctermfg=15    ctermbg=47
hi LineNr       cterm=NONE     ctermfg=252   ctermbg=0
hi ModeMsg      cterm=NONE     ctermfg=21    ctermbg=15
hi Question     cterm=NONE     ctermfg=84
hi CursorLine   cterm=none     ctermbg=236 guibg=#202020
hi CursorColumn cterm=NONE     ctermbg=235 guibg=#202020

hi MatchParen cterm=NONE ctermbg=52 ctermfg=226

hi Pmenu        ctermbg=237
hi PmenuSel 	 ctermbg=250

hi diffChange  ctermbg=24
hi diffRemove  ctermbg=52 
hi diffAdd     ctermbg=22
hi DiffText 	term=reverse cterm=bold  cterm=bold ctermbg=27

" vimdiff - from diff command
hi diffChanged  ctermbg=24
hi diffRemoved  ctermbg=52 
hi diffAdded     ctermbg=22

hi SpellBad term=reverse cterm=bold ctermbg=27

hi todo  ctermbg=226 ctermfg=235 cterm=bold


" fold
highlight Folded ctermbg=NONE guibg=#202020
