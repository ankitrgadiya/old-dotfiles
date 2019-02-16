" Begin ~/.vimrc

" Copyright 2016-2018, Ankit R Gadiya
" BSD 3-Clause License

" Enable modern features
set nocompatible
filetype plugin indent on

" Package Manager

"" Initialization
packadd minpac
call minpac#init()

"" Packages
call minpac#add('altercation/vim-colors-solarized')
call minpac#add('k-takata/minpac', {'type':'opt'})
call minpac#add('morhetz/gruvbox')
call minpac#add('senderle/restoreview')
call minpac#add('tpope/vim-commentary')
call minpac#add('tpope/vim-surround')
call minpac#add('fatih/vim-go')

"" Disabled Packages
" call minpac#add('francoiscabrol/ranger.vim')

"" Package Commands
command! PackUpdate call minpac#update()
command! PackClean  call minpac#clean()

" Options
set history=1000
set tabpagemax=50
set nohlsearch
set incsearch
set number
set relativenumber
set laststatus=2
set ruler
set t_Co=256
set t_ut=
set background=dark
set shiftwidth=4
set tabstop=4
set autoindent
set cindent
set noexpandtab
set smartindent
set smarttab
set list lcs=tab:\|·,trail:·
set fillchars="fold:\ "
set colorcolumn=81
set path+=**
set wildmenu
set showcmd
set splitbelow
set splitright
set foldmethod=manual
" set clipboard=unnamedplus

" Syntax highlighting
syntax on
" let g:gruvbox_contrast_dark = 'medium'
" let g:gruvbox_italic = '1'
" let g:gruvbox_vert_split='bg2'
colorscheme solarized

" Key mappings

"" Quickfix
nmap <LEADER>o :copen<CR>
nmap <LEADER>c :cclose<CR>
nmap <LEADER>n :cnext<CR>
nmap <LEADER>p :cprev<CR>

"" Slipts and Tab
nmap <LEADER><LEADER> :vsplit<CR>
nmap <LEADER>- :split<CR>
nmap <LEADER>t :tabnew<CR>

"" Buffer
nmap <LEADER>d :bdelete<CR>

"" Misc
nmap <LEADER>s :w<CR>
nmap <LEADER>f :find<Space>
nmap <LEADER>m :make<Space>
nmap <LEADER>g :vimgrep<SPACE>
nmap - :Explore<CR>

"" Disable arrow keys in normal mode
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" File Explorer
let g:netrw_banner = 0
" autocmd VimEnter * if !argc() | :Explore | endif

" GUI Options
if has('gui_running')
	set guioptions-=T
	set guioptions-=m
	set guioptions-=e
	set guioptions-=r
	set guioptions-=L
	set guifont=Iosevka\ Type\ Medium\ 13
endif

" Remove trailing space
autocmd BufWritePre * %s/\s\+$//e

" End ~/.vimrc
