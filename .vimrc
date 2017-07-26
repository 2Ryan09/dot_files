set nocompatible              " be iMproved, required
filetype off                  " requiredi

"Use pathogen to easily modify the runtime path to include all
" plugins under the ~/.vim/bundle directory
call pathogen#helptags()
call pathogen#infect()
let mapleader=","
set t_Co=256

let g:NERDSpaceDelims = 1
let g:NERDCommentEmptyLines = 1

set modelines=0
set showcmd
set wildmenu
set wildmode=list:longest
set cursorline
set ttyfast
set ruler
set laststatus=2
set undofile
set gdefault


" Quickly edit/reload vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

set hidden

set nowrap
set backspace=indent,eol,start
set autoindent
set copyindent
set shiftround
set ignorecase
set smartcase
set hlsearch
set incsearch

set history=1000
set undolevels=1000
set wildignore=*.swp,*.bak,*.pyc,*.class
set title
set visualbell
set noerrorbells

set nobackup
set noswapfile

filetype plugin indent on

set list 
set listchars=tab:>.,trail:.,extends:#,nbsp:.

autocmd filetype html,xml set listchars-=tab:>.

set pastetoggle=<F2>
set showmode

nnoremap ; :

vmap Q gq
nmap Q gqap

nnoremap j gj
nnoremap k gk

nnoremap <tab> %
vnoremap <tab> %

set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

au FocusLost * :wa

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

nnoremap <leader><space> :noh<cr>

cmap w!! w !sudo tee % >/dev/null

syntax on
set tabstop=4
set number
filetype indent on
colorscheme molokai
set softtabstop=0 expandtab shiftwidth=4 smarttab mouse=a

nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
nnoremap <leader>a :Ack
nnoremap <leader>v V`]

inoremap jj <ESC>
