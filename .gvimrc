set guioptions=a

colorscheme gruvbox

" If you really want dark...
if !exists("$LIGHTMODE") || $LIGHTMODE==0
    set background=dark
    colorscheme solarized
    highlight Normal guibg=black
endif

" Some fonts I like...
"set guifont=Lucida_Console:h10
"set guifont=InputMono_Medium:h11
"set guifont=Consolas:h12
"set guifont=Misc\ Fixed\ 12
set guifont=Inconsolata\ Medium\ 13
"set guifont=Adobe\ Courier\ 12
