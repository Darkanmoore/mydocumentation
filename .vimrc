filetype indent plugin on
set showmatch
set wildmenu
set number
set ttyfast
syntax enable
syntax on
set nocompatible
set background=dark
colorscheme jellybeans
set t_Co=256
set shell=/bin/zsh
set termencoding=utf-8
set encoding=utf-8
set fileencoding=utf-8
filetype on
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set showcmd
set mouse=a
set noswapfile
let g:solarized_termcolors=256

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

"Searching Options
set hlsearch
set ignorecase
set showmode

command! -nargs=1 -complete=custom,jedi#py_import_completions Pyimport :call jedi#py_import(<q-args>)


"Setting some useful shortcut

map <c-f> /
map <c-c> "+y
map <c-x> "+x
map <c-v> "+gP
map <c-s> :wq

" Set extra options when running in GUI mode
if has("gui_running")
    set background=dark
        set guioptions-=T
    set guioptions+=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf-8

" Use Unix as the standard file type
set ffs=unix,dos,mac
