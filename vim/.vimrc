call plug#begin('~/.vim/plugged')
Plug 'crusoexia/vim-monokai'
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-vinegar'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'msanders/snipmate.vim'
Plug 'tpope/vim-surround'
Plug 'trevordmiller/nova-vim'
Plug 'joshdick/onedark.vim'
Plug 'PotatoesMaster/i3-vim-syntax'
call plug#end()

"---------------Misc----------------------"
" Bottom bar
set laststatus=2

" Better be safe than sorry
set nocompatible

"--------------Editor---------------------"

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

" Smart numbers
set relativenumber

"----------------Visuals-------------------"

syntax enable

" Enable 256 colors. Terminal vim
set t_Co=256

" Theme
colorscheme onedark

" Highlight trailing white space end of line
:highlight ExtraWhiteSpace ctermbg=red guibg=red
call matchadd('ExtraWhiteSpace', '\s\+$')

"----------------Search--------------------"

" Highlight search. See mappings to disable highlighting when search is done
set hlsearch

" Search parameters
set ignorecase
set smartcase
set incsearch

" Shell search to ignore case sensitivty
set wildignorecase


"----------------Remapping-----------------"

" Replace default hjkl with jkl; for better finger position
noremap ; l
noremap l k
noremap k j
noremap j h

"----------------Mappings------------------"
"
" Override default Leader with the ',' key
let mapleader = ','

" Make it easy to edit Vimrc
nmap <Leader>ev :tabedit $MYVIMRC<cr>

" Remove search higlight
nmap <Leader><space> :nohlsearch<cr>

" Toggle left tree
nmap <Leader>/ :NERDTreeToggle<cr>

" Search all tags in files
nmap <Leader>t :CtrlPBufTag<cr>

" Search all tags with ctags
nmap <Leader>f :tag<space>

" Show recent files
nmap <Leader>r :CtrlPMRUFiles<cr>

"Close vinegar
nmap <Leader>k :bd<cr>

" Edit snippets
nmap <Leader>es :e ~/.vim/snippets/

" Create pdf Markdown
nmap <Leader>m :!pandoc %:p -o /tmp/document.pdf -s -N && google-chrome /tmp/document.pdf  > /dev/null 2>&1 &<cr>

"---------------Auto-Commands-------------"

" Disable expandtab for Makefile files
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0

" Automatically source the Vimrc file on save
augroup autosourcing
  autocmd!
  autocmd BufWritePost .vimrc source %
augroup END

"------------Split management------------"

" Default split position
set splitbelow
set splitright

" Split management with jkl;
nmap zj <C-W><C-H>
nmap zk <C-W><C-J>
nmap zl <C-W><C-K>
nmap z; <C-W><C-L>


"------------Plugins---------------------"

"/
"/ CtrlP
"/

let g:ctrlp_custom_ignore = 'node_modules/DS_Store\|git\|vendor'

let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'

"/
"/ NerdTree
"/

" Prevent NerdTree from overriding - vinegar shortcut
let NERDTreeHijackNetrw = 0

"/
"/ Vinegar
"/
"
" Hide hidden files by default
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'
let g:netrw_banner       = 0
let g:netrw_liststyle    = 3
let g:netrw_sort_options = 'i'

