" Tips
" :retab! - replaces tabs with spaces

syntax on
"colorscheme slate

" text
set autoindent
set expandtab
set shiftround
set shiftwidth=2
set smarttab
set softtabstop=2
set tabstop=2

" search
set ignorecase
set incsearch
set smartcase

" UI
set backspace=indent,eol,start
set colorcolumn=72,80,120
set cursorline
set history=1000
set laststatus=2
set number
set scrolloff=8
set showcmd
set showmode

" show extra whitespace
set list
set listchars=tab:▹\ ,trail:·,nbsp:⚋

" color
highlight ColorColumn ctermbg=10
