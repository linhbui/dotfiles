set runtimepath^=~/.vim/bundle/ctrlp.vim
execute pathogen#infect()
autocmd vimenter * NERDTree

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
" Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
" call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" set vim for zsh
set shell=/bin/sh

" Syntax Highlighting for .jst.ejs & slim 
au BufNewFile,BufRead *.ejs set filetype=html
au BufNewFile,BufRead *.html.slim set filetype=html
au BufNewFile,BufRead *.hbs set filetype=html
au BufNewFile,BufRead *.hamlbars set filetype=html
autocmd BufRead,BufNewFile *.es6 setfiletype javascript

" Improve vim speed from syntax Highlighting
set nocursorcolumn
set nocursorline
set norelativenumber
syntax sync minlines=256

set mouse=a
set cmdheight=2
set ruler

set nocompatible
set showcmd
set showmatch

set autoread
let mapleader = ","
let g:mapleader = ","

filetype on
filetype plugin on
filetype indent on
syntax enable
set grepprg=grep\ -nH\ $*

set autoindent
set smartindent
set expandtab
set smarttab
set shiftwidth=2
set softtabstop=4
imap <C-Return> <CR><CR><C-o>k<Tab>

set scrolloff=5
set backspace=eol,start,indent
set number
set hidden

set wrap linebreak nolist

set undolevels=1000
set ttyfast
set shell=bash

set ignorecase
set smartcase

set incsearch
set hlsearch

"let g:clipbrdDefaultReg = '+'
"set clipboard=unnamedplus
set clipboard=unnamed

" remap to navigate in display line
noremap j gj
noremap k gk

" remap go to end of line
noremap m $

set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp

set cul
hi CursorLine term=none cterm=none ctermbg=3

set background=dark
"colorscheme solarized
colorscheme molokai

:command WQ wq
:command Wq wq
:command W w
:command Q q	

if has("gui_running")
    set guioptions-=T
    set guioptions+=e
    set t_Co=256
    set columns=84
    set guitablabel=%M\ %t
endif

:nmap <Leader>f :TlistToggle<CR>

:cmap w!! w !sudo tee % > /dev/null
:cmap W!! w !sudo tee % > /dev/null

"let g:slimv_swank_cmd = '! xterm -e csi ~/.vim/slime/swank-chicken.scm &' 
let g:lisp_rainbow = 1

let g:haddock_browser = '/usr/bin/firefox'
let g:haddock_docdir = '/home/sak/.haskell/haddock/'

:nmap <Leader>t :NERDTreeToggle<CR>

"set foldmethod=indent
set foldmethod=syntax
set foldlevel=99

map <s-j> <c-w>j
map <s-k> <c-w>k
map <s-l> <c-w>l
map <s-h> <c-w>h
map <s-o> <c-o>
map <s-i> <c-i>
:nmap <Leader>p <c-p>

" set copy and paste
:vmap <Leader>c "+y 
:nmap <Leader>v "+p 

"for quick insert , and ; in Backbone options hash
:nmap <Leader>, ja,<ESC>
:nmap <Leader>; ja;<ESC>

let g:pydoc_cmd = '/usr/bin/pydoc3'

au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

set guifont=Inconsolata\ 11
"set guifont=Anonymous\ Pro\ 11

"for python comment # de-indenting problem
inoremap # X<BS>#

let g:processing_fold=1

"powerline settings
let g:airline#extensions#tabline#enabled = 1
