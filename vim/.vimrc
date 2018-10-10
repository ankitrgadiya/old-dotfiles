" Begin ~/.vimrc

" Copyright 2016-2018, Ankit R Gadiya
" BSD 3-Clause License

" Package Manager
packadd minpac
call minpac#init()

" Packages
call minpac#add('k-takata/minpac', {'type':'opt'})
call minpac#add('altercation/vim-colors-solarized')
call minpac#add('morhetz/gruvbox')
call minpac#add('francoiscabrol/ranger.vim')
call minpac#add('senderle/restoreview')
call minpac#add('tpope/vim-commentary')

" Package Commands
command! PackUpdate call minpac#update()
command! PackClean  call minpac#clean()

" Sane defaults
set nocompatible
filetype plugin indent on
set history=1000
set tabpagemax=50
set incsearch

" Disable arrow keys in normal mode
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Line number
set number
set relativenumber

" Ruler
set ruler

" Syntax highlighting
let g:gruvbox_contrast_dark = 'medium'
let g:gruvbox_italic = '1'
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
set list lcs=tab:\|·,trail:·

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

" Removes dashes from fold
set fillchars="fold:\ "

" Key mappings
nmap <LEADER>t :!ctags -R .<CR>
nmap <LEADER>g :vimgrep<SPACE>
nmap <LEADER>o :copen<CR>
nmap <LEADER>c :cclose<CR>
nmap <LEADER>n :cnext<CR>
nmap <LEADER>p :cprev<CR>

" End ~/.vimrc
