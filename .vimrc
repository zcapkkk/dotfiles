" My vim configurations
" Author: Kelvin Ho

" Enable vim functionality
set nocompatible
" Enable syntax highlighting
syntax on
" Disable startup message
set shortmess+=I
" Set current line to show real line number
" And other lines to be relative line numbers
set number
set relativenumber

" Show status line at bottom, even with only one window open
set laststatus=2

" Set backspace to be more intuitive
set backspace=indent,eol,start
" Hiding buffers
set hidden 

" Set searching to be case-insensitive
set ignorecase
set smartcase

"Enable searching as you type
set incsearch

" Unbind Q, as Q in normal mode enters Ex mode
nmap Q <Nop>

" Uncomment to disable audio bells
" set noerrorbells visualbell t_vb=

" Enable mouse support
set mouse+=a


" The above setup is adapted from the vimrc given by Missing Semester


" Setup plug in. I am using Vim-plug package
" Auto install vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Begin plugin call
call plug#begin('~/.vim/plugged')
" Use single quotes

" General Plugins
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'neoclide/coc.nvim', {'branch':'release'}
call plug#end()

" Vim-plug ends

