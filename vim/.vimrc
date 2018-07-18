" Begin ~/.vimrc

" Copyright 2016-2018, Ankit R Gadiya
" BSD 3-Clause License

" Vim-Plug ---------------------------------------------------------------------
call plug#begin('~/.vim/plugged')

" Ranger integration
Plug 'francoiscabrol/ranger.vim'

" Comments
Plug 'tomtom/tcomment_vim'

" Themes
Plug 'morhetz/gruvbox'

" Initialize plugin system
call plug#end()
"-------------------------------------------------------------------------------

" Disable arrow keys in normal mode
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Keymap for matching braces
noremap % v%

" Line number
set number
set relativenumber

" Ruler
set ruler

" Syntax highlighting
syntax on
set t_Co=256
set t_ut=
set background=dark
colorscheme gruvbox

" Tabs
set tabstop=4
set shiftwidth=4
set cindent
set autoindent
set list lcs=tab:\|·

" Use system clipboard by default
set clipboard=unnamedplus

" Status line
set laststatus=2

" Column indicator
set colorcolumn=81

" Remove trailing space
autocmd BufWritePre * %s/\s\+$//e

" Append current directory and subfolders to path
set path+=**

" Display menu for tab completion
set wildmenu

" End ~/.vimrc
