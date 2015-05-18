let s:vim_home = '$HOME/.vim/'
let plugStatus = 1
let plugFile = expand('~/.vim/autoload/plug.vim')
if !filereadable(plugFile)
    echo "Installing vim-plug..."
    silent !mkdir -p $HOME/.vim/autoload
    silent !mkdir -p $HOME/.vim/plugged
    silent !curl -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim
    let plugStatus = 0
endif

set nocompatible

call plug#begin('~/.vim/plugged')
let g:plug_threads = 4
let g:plug_timeout = 3600
" Essentials
Plug 'ervandew/supertab'
Plug 'Lokaltog/vim-easymotion'
Plug 'vitalk/vim-shebang'
Plug 'bling/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'morhetz/gruvbox'
" File types
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'groovy.vim', { 'for': 'groovy' }
Plug 'tfnico/vim-gradle', { 'for': 'groovy' }
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
Plug 'elzr/vim-json', { 'for': 'json' }
Plug 'ekalinin/Dockerfile.vim', { 'for': 'Dockerfile' }
Plug 'nginx.vim', { 'for': 'nginx' }
call plug#end()

if plugStatus == 0
    echo "Installing Bundles"
    echo ""
    :PlugInstall
endif

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
