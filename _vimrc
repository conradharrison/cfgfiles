set nocompatible
behave xterm

set backupdir=$VIMBDIR
set backup
if !isdirectory($VIMBDIR) | set nobackup | endif

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

set background=dark
colorscheme darkblue

filetype plugin indent on

" Paste like xterm
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

" SystemVerilog files use Verilog syntax
autocmd BufNewFile,BufRead *.sv set syntax=verilog

autocmd BufNewFile,BufRead *.py set tabstop=4 shiftwidth=4 textwidth=0 noexpandtab

" Whaaa?!
let fortran_free_source=1
let fortran_have_tabs=1
let fortran_more_precise=1
let fortran_do_enddo=1
