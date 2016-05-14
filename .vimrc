" removes the vi compatibility
set nocompatible

call plug#begin('~/.vim/plugged')

    Plug 'tpope/vim-vinegar'
    let g:netrw_liststyle=3

    Plug 'chriskempson/base16-vim'
    let base16colorspace = 256

    Plug 'airblade/vim-gitgutter'

    Plug 'sheerun/yajs.vim'

    Plug 'ctrlpvim/ctrlp.vim' " Better filesearching
    let g:ctrlp_map = '<c-p>'
    let g:ctrlp_cmd = 'CtrlP'
    let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
    set wildignore+=*/tmp/*,*.so,*.swp,*.zip

    Plug 'tpope/vim-commentary' " Multi line comments

    Plug 'Shougo/neocomplete.vim' "Autocompletion

call plug#end()

" Remove startmessage
set shortmess+=I

" status line settings
set laststatus=2 " always show the statusline
set statusline=%F\ %y
set cmdheight=3

" Coding Stuff
syntax on
set number
set cursorline
set spell
set nowrap

" tab settings
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set listchars=tab:\ \

" trailing whitespaces
set list listchars=trail:🔴
" Search Stuff
set ignorecase  " ignore case in search
set incsearch   " incremental search
set hlsearch
nnoremap <CR> :nohlsearch <CR> " clear search on when hitting return

" mouse
set mouse=a " use mouse 🤔

" split view settings
set splitbelow " open below instead of above
set splitright " open right instead of left

" Color Stuff
set t_Co=256
colorscheme base16-eighties " requires other configurations in iterm (load configuration in colors

" No backup Stuff
set noswapfile
set nobackup

" set leader key to space
let mapleader = "\<Space>"

map <Leader>w :w <CR>
