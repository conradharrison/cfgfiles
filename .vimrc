set nocompatible
behave xterm

" Paste like xterm
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

" ANSI sequences for terminal control: cursor shapes
" normal  = (1)blinking block
" insert  = (5)blinking bar
" replace = (3)blinking unerscore
let &t_ti.="\<Esc>[1 q"
let &t_SI.="\<Esc>[5 q"
let &t_SR.="\<Esc>[3 q"
let &t_EI.="\<Esc>[1 q"
let &t_te.="\<Esc>[0 q"

" backup
let s:VIMBDIR=$HOME . '/.tmp'
let &backupdir=s:VIMBDIR
set backup
if !isdirectory(&backupdir) | set nobackup | endif
" system
set autochdir
set noswapfile
set wildmode=list:longest
set encoding=utf-8
set diffexpr="diff -w -b"
let g:netrw_liststyle = 1 " 0-thin, 1-details, 2-wide, 3-tree
let g:netrw_preview = 1
let g:netrw_winsize = 30
let g:netrw_keepdir=0 " This is a fix(<vim9) for autochdir/lcd behaviour
" editor
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set textwidth=0
set incsearch
set ignorecase
set smartcase
set hlsearch
set showmatch
set backspace=indent,eol,start

" ui
set cmdwinheight=1
set noequalalways
set sidescroll=1
set title
set number
set ruler
set belloff="all"

filetype plugin indent on
syntax on

silent! call plug#begin()
Plug 'morhetz/gruvbox'
silent! call plug#end()

let g:gruvbox_contrast_light='hard'
let g:gruvbox_contrast_dark='hard'
set background=dark
"if &term =~ "win32" | set background=light | endif " vim doesn't detect this correctly in winterm
colorscheme gruvbox

" I want dark backgrounds at home
nnoremap <F6> :let &bg=(&bg=='light'?'dark':'light')<cr>
nnoremap <F7> :colorscheme gruvbox<CR>
nnoremap <F8> :colorscheme default<CR>

" Syntax rules
autocmd BufNewFile,BufEnter *.ssh/config* setlocal noexpandtab

" Default markdown links under_score names to htmlError. So remove the link.
autocmd FileType markdown highlight default link markdownError NONE

" Terminal mode uses underline by default - change to something nicer
if &term !~ "gui" 
    highlight CursorLine cterm=bold,italic ctermbg=LightMagenta
endif
