filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-powerline'
call vundle#end()
filetype plugin indent on
set nocompatible

syntax on
set encoding=utf-8
set showcmd
set helplang=En
set showmatch
set nrformats=hex

"" look and feel
set background=dark
colorscheme badwolf

"" searching
set smartindent
set history=50
set autoindent
set hlsearch
set incsearch
set showmatch
set ignorecase
set number
set ruler
set smartcase
let mapleader=","
"folding settings
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1

nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
cmap w!! w !sudo tee % > /dev/null
ino <S-tab> <C-x><C-o>
nnoremap j gj
nnoremap k gk

if has("autocmd")
    filetype plugin indent on
    autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
    autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab
    autocmd FileType python setlocal ts=4 sw=4 sts=4 expandtab
    autocmd FileType jade setlocal ts=2 sts=2 sw=2 expandtab
endif
set noswapfile
set nobackup
set visualbell
set noerrorbells
set nowrap
set ignorecase
set smartcase
