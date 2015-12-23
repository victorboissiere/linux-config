" Better be safe than sorry
set nocompatible

set tabstop=2
set autoindent

" space instead of tabs
set expandtab

" Matching braces
set showmatch

" Line numbers
set number

" Show vertical line at the 80th column
:highlight TooLong ctermbg=red guibg=red
call matchadd('TooLong', '\%>80v.\+')

" Highlight trailing white space end of line
:highlight ExtraWhiteSpace ctermbg=red guibg=red
call matchadd('ExtraWhiteSpace', '\s\+$')

" Syntax
syntax on

" Autocomplete
set complete+=k

" Disable expandtab for Makefile files
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0
