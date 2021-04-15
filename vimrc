"╔═══════════════════════════════════════════════════════╗
"║  ███████╗ █████╗ ███╗   ███╗██╗  ██╗██╗   ██╗██╗  ██╗ ║
"║  ██╔════╝██╔══██╗████╗ ████║██║  ██║██║   ██║██║ ██╔╝ ║
"║  ███████╗███████║██╔████╔██║███████║██║   ██║█████╔╝  ║
"║  ╚════██║██╔══██║██║╚██╔╝██║╚════██║██║   ██║██╔═██╗  ║
"║  ███████║██║  ██║██║ ╚═╝ ██║     ██║╚██████╔╝██║  ██╗ ║
"║  ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝     ╚═╝ ╚═════╝ ╚═╝  ╚═╝ ║
"╚═══════════════════════════════════════════════════════╝

"
filetype plugin indent on
set encoding=utf-8
set nocompatible
syntax enable

set ruler number relativenumber cursorline

set expandtab tabstop=4 autoindent softtabstop=4

set showcmd wildmenu

set hlsearch incsearch

set wrap linebreak nolist textwidth=75
"set cursor
set ttimeoutlen=10
let &t_SI.="\e[5 q" 
let &t_SR.="\e[3 q"
let &t_EI.="\e[2 q" 

" if not instaled vim-plug
silent !git fetch
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !git submodule update --init --recursive
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"	BEGIN PLAGIN LIST
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'dracula/vim', {'name': 'dracula'}
Plug 'vim-airline/vim-airline!'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"	END PLAGIN LIST
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#end()
colorscheme dracula

