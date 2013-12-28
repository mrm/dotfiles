call pathogen#infect()

set nocompatible

filetype on
filetype plugin on
filetype indent on

set ruler
set nowrap
set hidden
set virtualedit=all
set showmatch
set showcmd
set showmode
set timeoutlen=350
set ttimeoutlen=0

let mapleader=","

" Search
set incsearch
set ignorecase
set hlsearch

set stl=%f\ %m\ %r\ %l/%L[%p%%]\ Col:%c\ Buf:%n
set laststatus=2

" Line numbers
set number

" Backspace over everything
set bs=2

" 3 lines below cursor
set so=3

"Turn on WiLd menu
set wildmenu

" Indenting
set cindent
set autoindent
set smartindent

" Don't match brace by blinking
set noshowmatch

" Tabs
set shiftround
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" Mouse support with iterm 
"set mouse=a

" Remove boot spash screen
set shortmess+=I

inoremap jj <esc>
inoremap jk <esc>

nnoremap Y y$ 

nnoremap j gj
nnoremap k gk

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Color
syntax on
"colorscheme molokai 

set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*.so,.DS_Store,.*

" Sudo after saving instead of before!
cmap w!! w !sudo tee % >/dev/null

" Plugins
" ctrl-p
nnoremap <F5> :GundoToggle<CR>

nnoremap <F6> :NERDTreeToggle<CR>

nnoremap <F7> :ClearCtrlPCache<CR>

" easymotion
let g:EasyMotion_leader_key = '<Leader>'
