colorscheme jellybeans
set transparency=30
set guifont=Menlo:h14
set guioptions-=T

syntax on
set showmode
set title
set number
set autoindent
set incsearch
set shiftwidth=4
set showmatch
set smarttab
set smartindent
set tabstop=4

source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

autocmd FileType yaml nmap ,e :execute '!ruby -ryaml -e "begin;YAML::load(open('."'"."%"."'".","."'"."r"."'".').read);rescue ArgumentError=>e;puts e;end"'


set nocompatible
filetype off

set rtp+=~/dotfiles/vimfiles/vundle.git/
call vundle#rc()

Bundle 'Shougo/unite.vim'
Bundle 'thinca/vim-ref'
Bundle 'thinca/vim-quickrun'

filetype plugin indent on
