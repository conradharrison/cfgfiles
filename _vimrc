set nocompatible
behave xterm

set autochdir
set backspace=indent,eol,start
set cmdwinheight=1
set noswapfile
set expandtab
set highlight="l"
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
set noequalalways
set ruler
set shiftwidth=4
set tabstop=4
set textwidth=0
set sidescroll=1
set title
set wildmode=list:longest
set number
set foldmethod=marker
set encoding=utf-8
set diffexpr="diff -w -b"
let g:netrw_liststyle=1 " 0-thin, 1-details, 2-wide, 3-tree

syntax on

filetype plugin indent on

" Needs pathogen.vim under autoload/
execute pathogen#infect()

" Paste like xterm
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

autocmd BufNewFile,BufEnter *.sv set syntax=verilog
autocmd BufNewFile,BufEnter *.py set tabstop=4 shiftwidth=4 textwidth=0

" Whaaa?!
let fortran_free_source=1
let fortran_have_tabs=1
let fortran_more_precise=1
let fortran_do_enddo=1
