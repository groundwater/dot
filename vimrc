set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'bling/vim-airline'
Bundle 'tpope/vim-fugitive'
Bundle 'pangloss/vim-javascript'
Bundle 'altercation/vim-colors-solarized'

filetype plugin indent on     " required!

" respond to mouse events
set mouse=a

" enable syntax highlighting
syntax on
filetype on

" set dtrace highlighting to .dtrace extension
au BufNewFile,BufRead *.dtrace setf dtrace

" open nerd tree on every open event
autocmd vimenter * NERDTree

" theme
set background=dark
colorscheme solarized

set expandtab
set tabstop=2

" close nerd tree if it's the only thing left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

