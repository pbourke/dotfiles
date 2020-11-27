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

set clipboard="exclude:.*"

let mapleader=","

call plug#begin('~/.vim/plugged')

" for working with git:
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'https://github.com/airblade/vim-gitgutter.git'

" text snippet manager
Plug 'https://github.com/SirVer/ultisnips.git'

" markdown
Plug 'https://github.com/tpope/vim-markdown.git'

" Fuzzy searcher
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" colorschemes
Plug 'https://github.com/altercation/vim-colors-solarized.git'
Plug 'https://github.com/flazz/vim-colorschemes.git'
Plug 'https://github.com/dracula/vim.git'
Plug 'https://github.com/cseelus/vim-colors-lucid.git'

" Syntastic syntax checker
Plug 'https://github.com/vim-syntastic/syntastic.git'

" Pairs of handy bracket mappings
Plug 'https://github.com/tpope/vim-unimpaired.git'

" Syntax highlighting for nginx config files
Plug 'https://github.com/vim-scripts/nginx.vim.git'

" Mediawiki syntax
Plug 'https://github.com/chikamichi/mediawiki.vim.git'

" Asciidoc syntax
Plug 'https://github.com/asciidoc/vim-asciidoc.git'

" Jinja template syntax
Plug 'https://github.com/vim-scripts/Jinja.git'

" beancount syntax
Plug 'https://github.com/nathangrigg/vim-beancount.git'

" TOML configuration file syntax
Plug 'cespare/vim-toml'

" Elm language syntax
Plug 'elmcast/elm-vim'

" Liquid templates (Shopify)
Plug 'https://github.com/tpope/vim-liquid'

" Python
" Code folding:
" Plug 'https://github.com/tmhedberg/SimpylFold.git'
" Indents
" Plug 'https://github.com/vim-scripts/indentpython.vim.git'
" Autocompletion
" Plug 'https://github.com/davidhalter/jedi-vim.git'


" Uncomment to use these plugins
"Plug 'fsharp/vim-fsharp', { 'for': 'fsharp', 'do': 'make fsautocomplete' }
"Plug 'https://github.com/tpope/vim-rails.git'
"Plug 'https://github.com/kien/ctrlp.vim.git'
"Plug 'https://github.com/guns/vim-clojure-static.git'
"Plug 'https://github.com/duganchen/vim-soy.git'
"Plug 'https://github.com/tpope/vim-fireplace.git'
"Plug 'https://github.com/mattn/emmet-vim.git'
"Plug 'https://github.com/elixir-lang/vim-elixir.git'
"Plug 'https://github.com/phleet/vim-mercenary.git'
"Plug 'https://github.com/ledger/vim-ledger.git'
"Plug 'https://github.com/guns/vim-sexp'
"Plug 'https://github.com/tpope/vim-surround.git'
"Plug 'https://github.com/tpope/vim-sexp-mappings-for-regular-people.git'
"Plug 'https://github.com/tpope/vim-repeat.git'
"Plug 'https://github.com/exu/pgsql.vim'
"Plug 'https://github.com/fsharp/vim-fsharp'
"Plug 'https://github.com/vimwiki/vimwiki.git'

call plug#end()

" set options for GUI/non-GUI environments
if has("gui_running")
    " solarized theme: ~/.vim/bundle/vim-colors-solarized:
    colorscheme solarized

    set mouse=a
    set guioptions-=m
    set guioptions-=T
    set background=light
else
    colorscheme default

    set background=dark
endif
