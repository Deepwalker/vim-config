" vim color file
" Maintainer:  Brian Nelson <nelsonbc@gmail.com>
" Last Change: $Revision: 1.1 $ $Date: 2003/12/15 17:25:08 $
"
" Less is More - A minimal color scheme. 
" Disigned to work equally well on 8 or 16 colors, terminal or gui. 

hi clear
set background=dark
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "less-mod"
hi Normal         term=none ctermfg=7 ctermbg=0 gui=none guifg=gray70 guibg=black
hi Directory      term=bold cterm=bold ctermfg=blue guifg=white
hi Search         term=reverse ctermfg=white  ctermbg=blue guifg=black guibg=gray90
hi MoreMsg        term=bold cterm=bold ctermfg=darkgreen gui=bold guifg=gray50
hi ModeMsg        term=bold cterm=bold gui=bold guifg=White guibg=gray50
hi LineNr         term=underline cterm=bold ctermfg=darkcyan guifg=#666666
hi Question       term=standout cterm=bold ctermfg=darkgreen gui=bold guifg=DarkGreen
hi Comment        term=bold cterm=bold ctermfg=5 gui=none guifg=gray40
hi Constant       term=bold cterm=none ctermfg=7 gui=none guifg=LightGray
hi Special        term=bold cterm=none ctermfg=3 gui=none guifg=#BBBBBB
hi Identifier     term=none cterm=none ctermfg=7 gui=none guifg=LightGray
hi PreProc        term=underline cterm=bold ctermfg=7 gui=bold guifg=White
hi Error          term=reverse cterm=bold ctermfg=7 ctermbg=1 gui=bold guifg=Black guibg=Red
hi NonText ctermfg=12 guibg=Black guifg=gray20
hi Todo           term=standout cterm=none ctermfg=0 ctermbg=7 guifg=Black guibg=White
hi String         term=none cterm=none ctermfg=3 gui=none guifg=gray90
hi Function       term=bold cterm=bold ctermfg=3 gui=none guifg=gray90
hi Statement      term=bold cterm=bold ctermfg=7 gui=bold guifg=White
hi Include        term=bold cterm=bold ctermfg=4 gui=none guifg=gray50
hi StorageClass   term=bold cterm=bold ctermfg=5 gui=none guifg=gray90
hi Type           term=none cterm=none ctermfg=7 gui=none guifg=White
hi Defined        term=bold cterm=bold ctermfg=6 gui=none guifg=gray80
hi CursorLine     cterm=NONE ctermbg=darkred ctermfg=white guibg=gray20
hi PMenu       	  term=bold cterm=bold ctermfg=3 gui=none guibg=gray20 guifg=gray90
hi PMenuSel       term=bold cterm=bold ctermfg=3 gui=bold guibg=gray30 guifg=gray90
hi Visual         term=bold cterm=bold ctermfg=3 gui=none guibg=gray90 guifg=gray20

hi link Character       String
hi link Number          Constant
hi link Boolean         Constant
hi link Float           Number
hi link Conditional     Statement
hi link Repeat          Statement
hi link Label           Statement
hi link Operator        Statement
hi link Keyword         Statement
hi link Exception       Statement
hi link Macro           Include
hi link PreCondit       PreProc
hi link Structure       Type
hi link Typedef         Type
hi link Tag             Special
hi link SpecialChar     Special
hi link Delimiter       Special
hi link SpecialComment  Special
hi link Debug           Special
