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
set directory=~/.vim/tmp
set backupdir=~/.vim/backup

source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

autocmd FileType yaml nmap ,e :execute '!ruby -ryaml -e "begin;YAML::load(open('."'"."%"."'".","."'"."r"."'".').read);rescue ArgumentError=>e;puts e;end"'

set nocompatible
filetype off

if has('vim_starting')
endif

filetype plugin indent on
filetype indent on
syntax on

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.dein')
  " XDG base direcory compartible
  let g:dein#cache_directory = $HOME . '/.dein'

  call dein#begin('~/.dein')

  " Let dein manage dein
  " Required:
  call dein#add('~/.dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')
  call dein#add('tomasr/molokai', {'merged': 0})

   let s:toml_dir  = $HOME . '/.vim/rc' 
   let s:toml      = s:toml_dir . '/dein.toml'
   let s:lazy_toml = s:toml_dir . '/dein_lazy.toml'
  
   call dein#load_toml(s:toml,      {'lazy': 0})
   call dein#load_toml(s:lazy_toml, {'lazy': 1})

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

colorscheme molokai