set ts=2 sw=2 cindent autoindent smarttab expandtab backspace=indent,eol,start
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
let g:fuzzy_ignore = ".pyc"
let g:fuzzy_ignore = ".ttf"
let g:fuzzy_matching_limit = 25
let NERDTreeIgnore=['\.pyc$']
 
"nnoremap <leader>t :FuzzyFinderTextMate<CR>
nnoremap <leader>t :FufFile<CR>
nnoremap <leader>ff :FuzzyFinderTextMate<CR>
"nnoremap <leader>b :FuzzyFinderBuffer<CR>
nnoremap <leader>b :FufBuffer<CR>

nnoremap <leader>w :set wrap<CR>
nnoremap <leader>nw :set nowrap<CR>
nnoremap <leader>d :NERDTreeToggle<cr>
nnoremap <leader>f :NERDTreeFind<CR>
nnoremap <C-B> :BufExplorer<CR>
nnoremap <C-L> :nohlsearch<CR>

filetype on
filetype indent on
filetype plugin on

set grepprg=ack\ -a
