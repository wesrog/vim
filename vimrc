set textwidth=79 ts=2 sw=2 cindent autoindent smarttab expandtab backspace=indent,eol,start
set encoding=utf-8 fileencoding=utf-8
set nobackup nowritebackup noswapfile autoread
set number hlsearch incsearch ignorecase smartcase

set nocompatible ignorecase incsearch smartcase showmatch showcmd hidden

set background=light
colorscheme default
syntax on

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

filetype on
filetype indent on
filetype plugin on

"set nu
"set sts=2
"set sw=2
