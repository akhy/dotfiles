set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'morhetz/gruvbox'
Plugin 'tfnico/vim-gradle'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree'
call vundle#end()
filetype plugin indent on

syntax on
syntax enable
colorscheme gruvbox

set number
set laststatus=2
set encoding=utf-8
set t_Co=256
set nowrap
set ruler
set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab
set autoindent
set copyindent
set nobackup
set noswapfile
set noerrorbells
set background=dark
