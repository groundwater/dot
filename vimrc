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

filetype plugin indent on     " required!

set mouse=a

syntax on
filetype on

au BufNewFile,BufRead *.dtrace setf dtrace

