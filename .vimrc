" enable syntax and plugins (for netrw)
syntax enable
filetype on
filetype plugin on
filetype indent on

colorscheme pablo

" inoremap " ""<Esc>i
" inoremap ' ''<Esc>i
" inoremap ( ()<Esc>i
" inoremap [ []<Esc>i
" inoremap { {}<Esc>i
inoremap < <><Esc>i
inoremap {<CR> {<CR>}<Esc>O

"" Switching windows
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h

set complete+=kspell
set wildmenu " Display all matching files when we tab complete

" Set partial search and result highlighting
set incsearch
set hlsearch

" Use one space, not two, after punctuation.
set nojoinspaces

" Use Vim settings, rather than Vi settings
set nocompatible

" Read file when modified outside Vim
set autoread

" Allow backspacing over everything in INSERT mode
set backspace=indent,eol,start

" Ignore case when searching
set ignorecase
set smartcase

" Show ruler and command visual aid
set ruler
set showcmd

" Show matching bracets
set showmatch

" Highlight the cursor line
set cursorline

" Set the colorscheme and window transparency
colorscheme desert
" set transparency=5

" Set default vertical split to right
set splitright

" Indent
set ai
set si


set hidden
set autoindent
set background=dark
"set colorcolumn=+1
set path+=**
set confirm
set relativenumber
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab
set showtabline=0

set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10

set statusline+=%F

augroup filetype
  autocmd BufNewFile,BufRead *.txt set filetype=human
  autocmd BufNewFile,BufRead *.md set filetype=markdown
augroup END

autocmd FileType gitcommit setlocal spell
autocmd FileType make set noexpandtab
autocmd BufRead,BufNewFile APPINF-*.yaml setlocal spell
autocmd FileType markdown set spell
autocmd FileType markdown set formatoptions+=t textwidth=80
