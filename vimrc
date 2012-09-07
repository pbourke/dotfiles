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
set winminheight=0

map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l

nnoremap <F7> :noh<CR>

" inserts new line without going into insert mode
map <S-Enter> O<ESC> 

if has("autocmd")
    autocmd bufwritepost .vimrc source $MYVIMRC
endif

if has("gui_running")
    set mouse=a
    set guioptions-=m
    set guioptions-=T
    set background=light
else
    " make solarized play nice on reduced-palette terminals
    let g:solarized_termcolors=256
    set background=dark
endif

call pathogen#infect()

" solarized theme: ~/.vim/bundle/vim-colors-solarized:
colorscheme solarized
