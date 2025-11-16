" Essentials
set nocompatible              " Use Vim settings rather than Vi
syntax on                     " Enable syntax highlighting
filetype plugin indent on     " Enable file type detection and smart indenting
set clipboard=unnamedplus

" UI improvements
set number                    " Show line numbers
highlight LineNr ctermfg=240 guifg=#585858 " Mute line numbers
set showcmd                   " Show incomplete commands
set wildmenu                  " Visual autocomplete for command menu
set showmatch                 " Highlight matching brackets
set laststatus=2              " Always show status line
set ruler                     " Show line and column number

" Search improvements
set incsearch                 " Search as you type
set hlsearch                  " Highlight search results
set ignorecase                " Case insensitive search
set smartcase                 " Unless you use capitals

" Indentation
set tabstop=4                 " Visual spaces per TAB
set shiftwidth=4              " Spaces for autoindent
set expandtab                 " Tabs are spaces
set autoindent                " Copy indent from current line

" Quality of life
set backspace=indent,eol,start " Make backspace work as expected
set colorcolumn=80,100
set hidden                    " Allow hidden buffers with unsaved changes
set scrolloff=3               " Keep 3 lines visible above/below cursor
set encoding=utf-8            " Use UTF-8 encoding

" Don't create backup/swap files (or put them elsewhere)
set nobackup
set noswapfile

