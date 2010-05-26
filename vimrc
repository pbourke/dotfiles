set nocompatible

" turn on syntax highlighting according to the current filetype
syntax on
filetype plugin indent on

set esckeys visualbell noerrorbells
set backspace=indent,eol,start

" search options
set hlsearch    " highlight search term
set incsearch   " search incrementally
set ignorecase  " ignore case in searches

set wildmenu
set showcmd
set number ruler
set autoindent

" trying this as an alternative to cindent
set smartindent
set showmatch

" Save marks for 500 files and a max of 500 lines per register
set viminfo='500,<500,\"50

" Remember 500 lines of command and search history
set history=500

" Tabs are filled with spaces and 4 characters wide
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" delete by 'shiftwidth' spaces on a line with all blanks, rather than
set smarttab

set nobackup
set mouse=a
set winminheight=0
set foldmethod=marker
colorscheme default

map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_

nnoremap <F7> :noh<CR>

" inserts new line without going into insert mode
map <S-Enter> O<ESC> 
