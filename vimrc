set textwidth=79 ts=2 sw=2 cindent autoindent smarttab expandtab backspace=indent,eol,start
set encoding=utf-8 fileencoding=utf-8
set nobackup nowritebackup noswapfile autoread
set number hlsearch incsearch ignorecase smartcase

set nocompatible ignorecase incsearch smartcase showmatch showcmd hidden

set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P

set background=light
colorscheme default
syntax on

let mapleader=","

let g:fuzzy_ignore = "*.log"
let g:fuzzy_ignore = "gems/*"
let g:fuzzy_ignore = ".git"
let g:fuzzy_matching_limit = 60
 
nnoremap <leader>t :FuzzyFinderTextMate<CR>
nnoremap <leader>b :FuzzyFinderBuffer<CR>

nnoremap <leader>w :set wrap<CR>
nnoremap <leader>nw :set nowrap<CR>
nnoremap <leader>d :NERDTreeToggle<cr>
nnoremap <leader>f :NERDTreeFind<CR>
nnoremap <C-B> :BufExplorer<CR>
nnoremap <C-L> :nohlsearch<CR>

filetype on
filetype indent on
filetype plugin on

"set nu
"set sts=2
"set sw=2
"
set grepprg=ack\ -a
