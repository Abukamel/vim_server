" vundle start
" No compatible with old VI
set nocompatible 
" required by vundle plugin
filetype off 
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
" let Vundle manage Vundle, required
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'sjl/gundo.vim'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-commentary'
Plugin 'godlygeek/tabular'
Plugin 'tpope/vim-markdown'
Plugin 'Raimondi/delimitMate'
Plugin 'saltstack/salt-vim'
Plugin 'Glench/Vim-Jinja2-Syntax'
call vundle#end()
" required by vundle
filetype plugin indent on 
" vundle end

" activating solarized light theme
syntax enable
set t_Co=16  " make use of 16 terminal colors for solarized theme
" end solarized

" general start
" enable syntax processing
syntax enable
" number of visual spaces per TAB
set tabstop=4
" number of spaces in tab when editing
set softtabstop=4
" tabs are spaces
set expandtab
" Be smart when using tabs ;)
set smarttab
set shiftwidth=4
" show command in bottom bar right
set showcmd
" highlight current line
set cursorline
set ruler
" load filetype-specific indent files
filetype indent on
" visual autocomplete for command menu
set wildmenu
" redraw only when we need to.
set lazyredraw
set ttyfast  
" highlight matching [{()}]
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2
" search as characters are entered
set incsearch
" ingnore case while searching
set ignorecase
" When searching try to be smart about cases 
set smartcase
" enable folding
set foldenable
" open most folds by default
set foldlevelstart=10
" 10 nested fold max
set foldnestmax=10
" space open/closes folds
nnoremap <space> za
" fold based on indent level
set foldmethod=indent
" Set to auto read when a file is changed from the outside
set autoread"
" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
" For regular expressions turn magic on
set magic
" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Movement
" move vertically by visual line
nnoremap j gj
nnoremap k gk
" highlight last inserted text
nnoremap gV `[v`]

" Leader Shortcuts
" leader is comma
let mapleader=","
" toggle gundo
nnoremap <leader>u :GundoToggle<CR>
" save session
nnoremap <leader>s :mksession<CR>
" Fast saving
nmap <leader>w :w!<cr>

" Backups
" Move backup to /tmp folder
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
set nowb
set noswapfile
