execute pathogen#infect()
syntax on
filetype plugin indent on

" My Defaults
set tabstop=2
set expandtab
set shiftwidth=2
set softtabstop=2
set autoindent
set nolist
set listchars=trail:🔹
set mouse=nicr
set splitright
set laststatus=0
set mouse+=a
set number
set noshowmode
set laststatus=0
set nocp
set wildmenu
set nowrap

if &term =~ '^screen'
  set ttymouse=xterm2
endif

imap jj <Esc>

