set nocompatible
behave xterm

set backspace=indent,eol,start
set autochdir
set cmdwinheight=1
set noswapfile
set expandtab
set highlight="l"
set hlsearch
set incsearch
set smartcase
set noequalalways
set ruler
set showmatch
set sidescroll=1
set title
set wildmode=list:longest
set number
set foldmethod=marker
set tabstop=4
let g:netrw_liststyle=1 " 0-thin, 1-details, 2-wide, 3-tree

syntax on

colorscheme darkblue

filetype plugin indent on

autocmd BufNewFile,BufRead *.py set tabstop=4 shiftwidth=4
