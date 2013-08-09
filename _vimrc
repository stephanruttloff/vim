"set nocompatible
"source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim
"behave mswin
"
"set diffexpr=MyDiff()
"function MyDiff()
"  let opt = '-a --binary '
"  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
"  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
"  let arg1 = v:fname_in
"  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
"  let arg2 = v:fname_new
"  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
"  let arg3 = v:fname_out
"  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
"  let eq = ''
"  if $VIMRUNTIME =~ ' '
"    if &sh =~ '\<cmd'
"      let cmd = '""' . $VIMRUNTIME . '\diff"'
"      let eq = '"'
"    else
"      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
"    endif
"  else
"    let cmd = $VIMRUNTIME . '\diff'
"  endif
"  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
"endfunction

let mapleader=","
syntax enable
set cmdheight=2
set undofile
set undodir=~/.vim/vim_undo
set undolevels=1000
set undoreload=10000
execute pathogen#infect()

"	---MAPPINGS---
map <F2> :source ~/.vim/autosession <cr>
map <F3> :tabp <cr>
map <F4> :tabn <cr>
map <F5> :tabnew <cr>
map <F12> :NERDTreeToggle <cr>
map <silent> <A-Up> :wincmd k<CR>
map <silent> <A-Down> :wincmd j<CR>
map <silent> <A-Left> :wincmd h<CR>
map <silent> <A-Right> :wincmd l<CR>

"	---VISUALS---
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions+=c
set guioptions-=l
set guioptions-=b
set guioptions-=R
set guioptions-=L
set guioptions-=e
set background=dark
colorscheme solarized
set nowrap        
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

" Sessions ********************************************************************
set sessionoptions=blank,buffers,curdir,folds,help,options,resize,tabpages,winpos,winsize
au VimLeave * mks! ~/.vim/autosession
