" No longer compatible with vi
set nocompatible

"Use pathogen to easily modify the runtime path to include all
" plugins under the ~/.vim/bundle directory
call pathogen#helptags()
call pathogen#infect()

" Use "," instead of "\" for jumping lines
let mapleader=","

" Let vim use 25 colors
set t_Co=25

" Set colorscheme
colorscheme badwolf

" Spaces after comment delimeters
let g:NERDSpaceDelims = 1

" Allow commenting empty lines
let g:NERDCommentEmptyLines = 1

" Allow different syntax in code blocks
let g:markdown_fenced_languages = ['java']

" Disables Modelines
set modelines=0

" Shows current command typing
set showcmd

" Autocompletes commands
set wildmenu
set wildmode=list:longest

" Places line below  working line
set cursorline

" For a faster terminal
set ttyfast

" Displays line and colomn number in bottom right
set ruler

" Activates status bar at bottom of screen
set laststatus=2

" Allows for undo in files closed
set undofile

" Allows for replacing all matching keywords to be replaced at once
set gdefault


" Quickly edit/reload vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Allows for editing other files without writing to working file
set hidden

" Allows for better line wrapping for longer lines
set nowrap

" Allows for better backspacing (over mulitple lines)
set backspace=indent,eol,start

" Copies indention from previous line
set autoindent

" Makes indention style the exact same as previous
set copyindent

" Case insensitive search
set ignorecase

" ,The will only find "The" but ,the will find "the" and "The"
set smartcase

" Highlights all search pattern results
set hlsearch

" Incremental search
set incsearch

" Stores 1000 values of command history
set history=1000

" Sets undo buffer
set undolevels=1000

" Ignores filetypes when using tab completion
set wildignore=*.swp,*.bak,*.pyc,*.class

" Doesn't beep at cursor errors
set visualbell
set noerrorbells

" Vim doesn't store backup files (use git)
set nobackup
set noswapfile

" Allows plugins to alter indention
filetype plugin indent on

" Marks whitespace
set list 
set listchars=tab:>.,trail:.,extends:#,nbsp:.

" Goes into paste mode, disables auto indentions
set pastetoggle=<F2>i

" DIsplays which mode setting is active
set showmode

" Maps the colon operator to the semicolon
nnoremap ; :

" Wraps text after 85 characters
set wrap
set textwidth=85
set formatoptions=qrn1

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
set softtabstop=0 expandtab shiftwidth=4 smarttab mouse=a

nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
nnoremap <leader>a :Ack
nnoremap <leader>v V`]

inoremap jj <ESC>
