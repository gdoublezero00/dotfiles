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
	set runtimepath+=~/.vim/bundle/neobundle.vim
	call neobundle#begin(expand('~/.vim/bundle/'))
endif

NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc', {
\ 'build' : {
\ 'windows' : 'make -f make_mingw32.mak',
\ 'cygwin' : 'make -f make_cygwin.mak',
\ 'mac' : 'make -f make_mac.mak',
\ 'unix' : 'make -f make_unix.mak',
\ },
\ }
NeoBundle 'VimClojure'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'jpalardy/vim-slime'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'derekwyatt/vim-scala'


" solarized
NeoBundle 'altercation/vim-colors-solarized'
" mustang
NeoBundle 'croaker/mustang-vim'
" jellybeans
NeoBundle 'nanotech/jellybeans.vim'
" molokai
NeoBundle 'tomasr/molokai'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'cesardeazevedo/Fx-ColorScheme'

NeoBundle 'pangloss/vim-javascript'
NeoBundle 'mxw/vim-jsx'

NeoBundle 'rust-lang/rust.vim'
NeoBundleLazy 'phildawes/racer', {
        \   'build' : {
        \     'mac'  : 'cargo build --release',
        \     'unix' : 'cargo build --release',
        \   },
        \   'autoload' : {
        \     'filetypes' : 'rust',
        \   },
        \ }
NeoBundle 'rhysd/rust-doc.vim'
call neobundle#end()

filetype plugin indent on
filetype indent on
syntax on

" colorscheme jellybeans
set background=light
colorscheme fx
