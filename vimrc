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

" case-sensitive search only if search string contains at least one uppercase
" letter
set smartcase

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

" don't create backup files (version control, yo)
set nobackup

" allow seamless blocks for lines of different lengths
set virtualedit=block

" multiple windows should stack tightly
set winminheight=0

" open splits in a more intuitive order
set splitbelow " sp opens new split below current window
set splitright " vs opens new split to the right of current window

map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l

" F7 clears all highlights from a previous search
nnoremap <F7> :noh<CR>

" Disable ex mode hotkey
nnoremap Q <nop>

" inserts new line without going into insert mode
map <S-Enter> O<ESC> 

if has("autocmd")
    autocmd bufwritepost .vimrc source $MYVIMRC
    autocmd! FileType python setl nosmartindent
    autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
    autocmd FileType eruby setlocal shiftwidth=2 tabstop=2
    autocmd FileType html setlocal shiftwidth=2 tabstop=2
    autocmd FileType yaml setlocal shiftwidth=2 tabstop=2
    autocmd FileType scss setlocal shiftwidth=2 tabstop=2
endif

" enable emmet-vim for HTML autocomplete (ie: div#id>p.class <ctrl-y>, to
" complete
let g:user_emmet_mode='a'

let g:ctrlp_cmd = 'CtrlP .'
let g:ctrlp_working_path_mode='ra'

" Ultisnips: https://github.com/SirVer/ultisnips
let g:UltiSnipsSnippetDirectories=["mysnippets"]
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" machine-specific vimrc settings (ie fonts)
if filereadable(glob("~/.vimrc.local")) 
    source ~/.vimrc.local
endif

" initialize plugins in vim/bundle
execute pathogen#infect()

" set options for GUI/non-GUI environments
if has("gui_running")
    " solarized theme: ~/.vim/bundle/vim-colors-solarized:
    colorscheme solarized

    set mouse=a
    set guioptions-=m
    set guioptions-=T
    set background=light
else
    colorscheme delek

    set t_Co=16
    set background=light
    let g:solarized_termcolors=256
endif

set clipboard="exclude:.*"

let mapleader=","

" add a new submodule to the bundle repository:
" git submodule add git://github.com/tpope/vim-rails.git vim/bundle/vim-rails

" initialize all submodules:
" git submodule update --init --recursive

" update submodules to the latest commit:
" submodules are not on a branch by default (detached head), so to update
" each one, you must switch to the branch (almost always master) and pull,
" thus for each bundle:

" $ cd bundle/<the plugin>
" $ git branch -a                          # confirm that master is the appropriate branch
" $ git checkout master
" $ git pull                               # plugin is updated to latest commit on master
" $ cd ..
" $ git add bundle; git commit; git push   # update submodule references in github

" Run :Helptags to generate help for all pathogen bundles
