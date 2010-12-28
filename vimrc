"source $HOME/.vim/pyvimrc

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab

set lbr
set tw=500

set ai "Auto indent
set si "Smart indet
set wrap "Wrap lines

"set ts=4 sw=2 cindent autoindent smarttab expandtab backspace=indent,eol,start
set encoding=utf-8 fileencoding=utf-8
set nobackup nowritebackup noswapfile autoread
set number hlsearch incsearch ignorecase smartcase

set nocompatible ignorecase incsearch smartcase showmatch showcmd hidden

set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P%{fugitive#statusline()}
set mouse=a

syntax enable

let mapleader=","

let NERDTreeIgnore=['\.pyc$']
 
"nnoremap <leader>t :FufFile<CR>
"nnoremap <leader>b :FufBuffer<CR>

let g:CommandTMaxHeight = 15
set wildignore+=*.o,*.obj,.git,*.pyc
noremap <leader>t :CommandT<cr>
noremap <leader>y :CommandTFlush<cr>

nnoremap <leader>c :TlistToggle<CR>
let Tlist_Use_Right_Window = 1

nnoremap <leader>w :set wrap<CR>
nnoremap <leader>nw :set nowrap<CR>
nnoremap <leader>d :NERDTreeToggle<cr>
nnoremap <leader>f :NERDTreeFind<CR>
nnoremap <leader>l :nohlsearch<CR>

filetype plugin indent on

set grepprg=ack\ -a

colorscheme vibrantink
colorscheme vibrantink

let python_highlight_all = 1
au FileType python syn keyword pythonDecorator True None False self
au BufNewFile,BufRead *.myt set ft=mako
au BufRead *.rb set ts=2 sw=2 tw=0
"Delete trailing white space, useful for Python ;)
func! DeleteTrailingWS()
    exe "normal mz"
    %s/\s\+$//ge
    exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()

"let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1
nnoremap <leader>o :BufExplorer<CR>

" When vimrc is edited, reload it
autocmd! bufwritepost vimrc source ~/.vimrc

" Close all the buffers
map <leader>ba :1,300 bd!<cr>
