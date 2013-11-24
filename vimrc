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
Bundle 'plasticboy/vim-markdown'
Bundle 'airblade/vim-gitgutter'
Bundle 'terryma/vim-multiple-cursors'

" tmux and vim pane navigation
Bundle 'christoomey/vim-tmux-navigator'

filetype plugin indent on     " required!

" respond to mouse events
set mouse=a
if &term =~ '^screen'
  " tmux knows the extended mouse mode
  set ttymouse=xterm2
endif


" enable syntax highlighting
syntax on
filetype on

" set dtrace highlighting to .dtrace extension
au BufNewFile,BufRead *.dtrace set filetype=dtrace

" open nerd tree on every open event
" autocmd vimenter * NERDTree

" theme
set background=dark
colorscheme solarized

set expandtab
set tabstop=2

" tab exists insert mode
inoremap <Tab> <Esc>
nnoremap <Tab> i

" From https://github.com/othiym23/.vim/blob/master/vimrc#L13-L17
set backspace=indent,eol,start
set autoindent
set smartindent

" line numbers
set number

" FAAAST
set ttyfast

" git gutter
let g:gitgutter_sign_column_always = 1

" open nerd tree if no other files specified
autocmd vimenter * if !argc() | NERDTree | endif

" close nerd tree if it's the only thing left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

