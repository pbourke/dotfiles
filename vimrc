" turn on syntax highlighting according to the current filetype
syntax on
set esckeys visualbell noerrorbells
set nocompatible
set backspace=indent,eol,start
set hlsearch incsearch
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
set tabstop=4
set shiftwidth=4
set expandtab
set nobackup
set mouse=a
set winminheight=0
set foldmethod=marker
colorscheme default

map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_

nnoremap <F7> :noh<CR>
