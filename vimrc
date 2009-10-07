set nocompatible
set ignorecase
set incsearch
set smartcase
set showmatch
set showcmd
set hidden

set background=light
colorscheme default
syntax on

set nobackup
set nowritebackup

let mapleader=","

let g:fuzzy_ignore = "*.log"
let g:fuzzy_ignore = "gems/*"
let g:fuzzy_ignore = ".git"
let g:fuzzy_matching_limit = 60
 
map <leader>t :FuzzyFinderTextMate<CR>
map <leader>b :FuzzyFinderBuffer<CR>

map <leader>w :set wrap<CR>
map <leader>nw :set nowrap<CR>
map <leader>d :execute 'NERDTreeToggle ' . getcwd()<CR>
nnoremap <C-B> :BufExplorer<cr>
nnoremap <C-L> :nohlsearch<cr>

set textwidth=79
set tabstop=2
set shiftwidth=2
set cindent
set autoindent
set smarttab
set expandtab
set backspace=indent,eol,start

filetype on
filetype indent on
filetype plugin on

"set nu
"set sts=2
"set sw=2
