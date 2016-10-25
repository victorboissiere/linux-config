call plug#begin('~/.vim/plugged')
Plug 'crusoexia/vim-monokai'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'Shougo/unite.vim'
Plug 'm2mdas/phpcomplete-extended'
Plug 'm2mdas/phpcomplete-extended-laravel'
call plug#end()

set laststatus=2

" Better be safe than sorry
set nocompatible

" Indentation settings
set tabstop=2
set autoindent
set shiftwidth=2

" space instead of tabs
set expandtab

" Matching braces
set showmatch

" Line numbers
set number

" Theme
syntax enable
let g:solarized_termcolors=256
colorscheme solarized
set t_Co=256  " vim-monokai now only support 256 colours in terminal.
set background=dark

" Highlight trailing white space end of line
:highlight ExtraWhiteSpace ctermbg=red guibg=red
call matchadd('ExtraWhiteSpace', '\s\+$')

" Autocomplete
set complete+=k

" Disable expandtab for Makefile files
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0

" Smart numbers
set relativenumber
set number

" Search settings
set hlsearch
set ignorecase
set smartcase

" Configure phpcomplete
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

" Custom binding
noremap ; l
noremap l k
noremap k j
noremap j h
