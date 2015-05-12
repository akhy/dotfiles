set nocompatible

call plug#begin('~/.vim/plugged')
" Essentials
Plug 'vitalk/vim-shebang'
Plug 'morhetz/gruvbox'
Plug 'bling/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'godlygeek/tabular'
" File types
Plug 'groovy.vim', { 'for': 'groovy' }
Plug 'tfnico/vim-gradle', { 'for': 'groovy' }
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
Plug 'elzr/vim-json', { 'for': 'json' }
Plug 'ekalinin/Dockerfile.vim', { 'for': 'Dockerfile' }
Plug 'nginx.vim', { 'for': 'nginx' }
call plug#end()

syntax on
syntax enable
colorscheme gruvbox

set number
set laststatus=2
set encoding=utf-8
set t_Co=256
set nobackup
set noswapfile
set noerrorbells
set history=1000
set background=dark

" ================ Indentation ======================
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
filetype plugin on
filetype indent on
set list listchars=tab:\ \ ,trail:· " Display tabs and trailing spaces visually
set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

au BufRead,BufNewFile */nginx.conf,/etc/nginx/*,/usr/local/nginx/conf/* if &ft == '' | setfiletype nginx | endif
