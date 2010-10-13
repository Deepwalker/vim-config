" We don't like plain vi
set nocompatible

" Initialize pathogen
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

" change the mapleader from \ to ,
let mapleader=","

" Hide buffer instead of close it
set hidden

set nowrap        	" don't wrap lines
set tabstop=4     	" a tab is four spaces
set backspace=indent,eol,start
                  	" allow backspacing over everything in insert mode
set autoindent    	" always set autoindenting on
set copyindent    	" copy the previous indentation on autoindenting
set number        	" always show line numbers
set shiftwidth=4  	" number of spaces to use for autoindenting
set shiftround    	" use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     	" set show matching parenthesis
"set ignorecase    	" ignore case when searching
set smartcase     	" ignore case if search pattern is all lowercase,
                  	"    case-sensitive otherwise
set smarttab      	" insert tabs on the start of a line according to
                  	"    shiftwidth, not tabstop
set hlsearch      	" highlight search terms
set incsearch     	" show search matches as you type
set scrolloff=4		" keep 4 lines off the edges of the screen when scrolling

set history=1000	" remember more commands and search history
set undolevels=1000 " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title           " change the terminal's title
set visualbell      " don't beep
set noerrorbells    " don't beep
set vb t_vb=
set lazyredraw		" don't redraw the screen during macros etc 
					" 	(NetHack's runmode:teleport)
set tildeop 		" make tilde (flip case) an operator

set nobackup
set noswapfile
set wildmenu 		" tab completion in ex mode
set ruler			" lines, cols in status line
set showmode		" current mode in status line
" display the number of (characters|lines) in visual mode, also cur command
set showcmd
" no extra status lines
set laststatus=0
" a - terse messages (like [+] instead of [Modified]
" t - truncate file names
" I - no intro message when starting vim fileless
set shortmess=atI
" display as much of the last line as possible if it's really long
" also display unprintable characters as hex
set display=lastline,uhex
" Enable mouse
set mouse=a
" if you :q with changes it asks you if you want to continue or not
set confirm
" 100 milliseconds for escape timeout instead of 1000
set ttimeoutlen=100
" share clipboard with windows clipboard
set clipboard+=unnamed
set cursorline
set fileencodings=ucs-bom,utf-8,latin1,default

" Activate filetype
filetype on
filetype plugin on
filetype plugin indent on

" Maps
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
nnoremap ; :
nmap <silent> <leader>/ :nohlsearch<CR>
" w!! saves file under sudo
cmap w!! w !sudo tee % >/dev/null
" Key mapping for Russian QWERTY keyboard in UTF-8
map й q
map ц w
map у e
map к r
map е t
map н y
map г u
map ш i
map щ o
map з p
map х [
map ъ ]
map ф a
map ы s
map в d
map а f
map п g
map р h
map о j
map л k
map д l
map ж ;
map э '
map я z
map ч x
map с c
map м v
map и b
map т n
map ь m
map б ,
map ю .
map Ж :

let g:netrw_list_hide = '.*\.swp$,.*\.pyc$,\.svn$,^\.[A-Za-z].*'

if has("gui_running")
	"" Tweak GUI options
	set guioptions=aegimLt
	set go-=M
	set go-=m
	set go-=L
	"" Use 256 colours
	set t_Co=256
	"" Size of GUI version windows
	set columns=84 lines=60
endif

if &t_Co >= 256 || has("gui_running")
   colorscheme less-mod
endif

if &t_Co > 2 || has("gui_running")
   " switch syntax highlighting on, when the terminal has colors
   syntax on
endif
