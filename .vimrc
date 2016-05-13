" removes the vi compatibility
set nocompatible

call plug#begin('~/.vim/plugged')

    Plug 'tpope/vim-vinegar'
    let g:netrw_liststyle=3

    Plug 'chriskempson/base16-vim' 
    let base16colorspace = 256

    Plug 'airblade/vim-gitgutter'

call plug#end()

" Remove startmessage 
set shortmess+=I

" Coding Stuff
syntax on
set number
set cursorline
set spell
set nowrap

" mouse
set mouse=a " use mouse 🤔

" Color Stuff
set t_Co=256
colorscheme base16-eighties " requires other configurations in iterm (load configuration in colors

" No backup Stuff
set noswapfile
set nobackup

" set leader key to space
let mapleader = "\<Space>"

map <Leader>w :w <CR>
