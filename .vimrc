" removes the vi compatibility
set nocompatible

call plug#begin('~/.vim/plugged')

    Plug 'tpope/vim-vinegar'
    let g:netrw_liststyle=3

    Plug 'chriskempson/base16-vim'
    let base16colorspace = 256

    Plug 'airblade/vim-gitgutter'

    Plug 'wincent/terminus' " enhanced terminal integration:w

    Plug 'sheerun/yajs.vim'

    Plug 'mxw/vim-jsx' " for react (jsx)
      let g:jsx_ext_required = 0 " Allow JSX in normal JS files"

    Plug 'ctrlpvim/ctrlp.vim' " Better filesearching
    let g:ctrlp_map = '<c-p>'
    let g:ctrlp_cmd = 'CtrlP'
    let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
    set wildignore+=*/tmp/*,*.so,*.swp,*.zip

    Plug 'tpope/vim-commentary' " Multi line comments with gcc

    Plug 'Shougo/neosnippet' "Snippets integrated in deoplete
    Plug 'Shougo/neosnippet-snippets'
    imap <C-k> <Plug>(neosnippet_expand_or_jump)
    smap <C-k> <Plug>(neosnippet_expand_or_jump)
    xmap <C-k> <Plug>(neosnippet_expand_target)

    smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
          \ "<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

    Plug 'Shougo/deoplete.nvim' "Autocompletion
    let g:deoplete#enable_at_startup = 1
"    let g:deoplete#disable_auto_complete = 1
    let g:deoplete#max_list = 5
    inoremap <silent><expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

    Plug 'davidhalter/jedi-vim' "Python Autocompletioln

    Plug 'jiangmiao/auto-pairs' "auto brakets

    Plug 'tpope/vim-fugitive' "some git magic with vim

    Plug 'scrooloose/syntastic' "some syntastic stuff for eslint
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*

    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_check_on_open = 1
    let g:syntastic_check_on_wq = 0
    let g:syntastic_javascript_checkers = ['jslint']

    Plug 'benekastah/neomake'
    autocmd! BufWritePost,BufWinEnter * silent Neomake
    autocmd BufWritePost *.js silent Neomake eslint
    let g:neomake_javascript_eslint_exe = './node_modules/eslint/bin/eslint.js'
    let g:neomake_javascript_enabled_makers = ['eslint, flow']
    let g:neomake_open_list = 0

    let g:neomake_error_sign = {
      \ 'text': '‣‣',
      \ 'texthl': 'ErrorMsg',
      \ }
    highlight myWarningMsg ctermbg=0 ctermfg=3 guibg=0 guifg=yellow
    let g:neomake_warning_sign = {
      \ 'text': '‣‣',
      \ 'texthl': 'myWarningMsg',
      \ }

call plug#end()

" order of snippets and buffer in deoplete
call deoplete#custom#set('buffer', 'rank', 9999)

set langmenu=en_US.UTF-8
language C

set backspace=indent,eol,start "fix delete

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

" Type mistakes...
command Wq wq
command WQ wq
command W w
command Q q

" tab settings
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set listchars=tab:\ \

" trailing whitespaces
set list listchars=trail:⚡️

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
set background=dark
colorscheme base16-eighties " requires other configurations in iterm (load configuration in colors

" No backup Stuff
set noswapfile
set nobackup

" set leader key to space
let mapleader = "\<Space>"

map <Leader>w :w <CR>
