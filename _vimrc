execute pathogen#infect()
execute pathogen#helptags()

let mapleader=","
syntax enable
set cmdheight=2
set undodir=~/.vim/undo
set undofile
set undolevels=1000
set undoreload=10000

" MAPPINGS
" Load last session
map <F2> :source ~/.vim/autosession <cr>
" Tab handling
map <F3> :tabnew <cr>
map <F4> :tabp <cr>
map <F5> :tabn <cr>
" NERDTree
map <F12> :NERDTreeToggle <cr>
" Window movement
map <silent> <A-Up> :wincmd k<CR>
map <silent> <A-Down> :wincmd j<CR>
map <silent> <A-Left> :wincmd h<CR>
map <silent> <A-Right> :wincmd l<CR>

" VISUALS
set t_Co=256 "putty color fix
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions+=c
set guioptions-=l
set guioptions-=b
set guioptions-=R
set guioptions-=L
set guioptions-=e

" Solarized
if strftime("%H") > 8 && strftime("%H") < 20
	set background=light
else
	set background=dark
endif
colorscheme solarized
call togglebg#map("<F6>")
let g:airline_theme='solarized'

set scrolloff=2  
set number      
set showmatch  
set showmode  
set showcmd  
set ruler   
set title  
set wildmenu
set wildignore=*.o,*.obj,*.bak,*.exe,*.py[co],*.swp,*~,*.pyc,.svn
set laststatus=2 
set matchtime=2 
set matchpairs+=<:>

set esckeys
set ignorecase
set smartcase
set smarttab
set magic
set bs=indent,eol,start

set tabstop=3
set shiftwidth=3

set fileformat=dos

set lazyredraw
set confirm
set nobackup
set viminfo='20,\"500
set hidden
set history=50
set mouse=v

" SESSIONS
set sessionoptions=blank,buffers,curdir,folds,help,options,resize,tabpages,winpos,winsize
if has("autocmd")
	au VimLeave * mks! ~/.vim/autosession
endif

" Auto reload vimrc after edit
if has("autocmd")
	autocmd! bufwritepost $MYVIMRC source $MYVIMRC
endif

"Open vimrc with <leader>v
nmap <leader>v :tabedit $MYVIMRC <CR>

" WRAPPING
set wrap linebreak
command! -nargs=* Wrap set wrap linebreak
command! -nargs=* Nowrap set nowrap nolinebreak 
"Wrapping - move to wrapped line with Alt + hjkl in normal and visual mode
nmap <A-j> gj
nmap <A-k> gk
nmap <A-h> gh
nmap <A-l> gl
vmap <A-j> gj
vmap <A-k> gk
vmap <A-h> gh
vmap <A-l> gl

" Text bubble (needs unimpaired.vim)
nmap <C-k> [e
nmap <C-j> ]e
vmap <C-k> [egv
vmap <C-j> ]egv

" GUI related stuff like open and save via window
if has("gui_running")
	nmap <C-o> :browse confirm tabe<cr>
	nmap <C-M-s> :bro sav<cr>
endif
" Save with CTRL + s
nmap <C-s> :w<cr>
imap <C-s> <ESC>:w<cr>a

" Enable paste from system clipboard (only tested on windows)
nmap <F9> "*p
imap <F9> <ESC>"*pi

" Markdown folding (needs vim-markdown-folding plugin)
set nocompatible
if has("autocmd")
	au BufRead,BufNewFile *.md set filetype=markdown
	filetype plugin indent on
endif
nnoremap <Space> za

" Move those nasty swap files to .vim dir
" If you get any error stating that the swap
" file could not be created you have to
" create the appropriate folder first
" (see ":echo &directory" for the exact path)
set directory=~/.vim/swap/

" Exit out with ALT + q
nmap <C-q> :q<cr>
imap <C-q> <ESC>:q<cr>
nmap <C-S-q> :qa<cr>
imap <C-S-q> <ESC>:qa<cr>

" Gundo plugin
nmap <F8> :GundoToggle<cr>

" Always set working dir to current file dir
set autochdir

" ctrlp settings
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_cache_dir = "~/.vim/ctrlp"

" set font to consolas on windows
if has("gui_running")
	if has("gui_win32")
		set guifont=Consolas:h10:cANSI
	endif
endif
let g:ctrlp_open_new_file = 't'

"toggle hlsearch
nnoremap <F11> :set hlsearch!<cr>
