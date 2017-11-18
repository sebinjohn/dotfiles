set hidden
set wildmenu
set showcmd
set hlsearch
set ignorecase
set smartcase
set backspace=indent,eol,start
set autoindent
set ruler
set confirm
set number
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab
set showtabline=0
set incsearch

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/sebin/.local/share/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/sebin/.local/share/dein')
  call dein#begin('/Users/sebin/.local/share/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/sebin/.local/share/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('Shougo/denite.nvim')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })
  call dein#add('easymotion/vim-easymotion')
  call dein#add('jreybert/vimagit')
  call dein#add('kien/ctrlp.vim')
  call dein#add('scrooloose/nerdtree')
  call dein#add('tpope/vim-commentary')
  call dein#add('tpope/vim-fugitive')
  call dein#add('tpope/vim-projectionist')
  call dein#add('tpope/vim-repeat')
  call dein#add('tpope/vim-surround')
  call dein#add('tpope/vim-unimpaired')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('vim-ctrlspace/vim-ctrlspace')
  call dein#add('vim-syntastic/syntastic')
  call dein#add('vim-scripts/YankRing.vim')
  call dein#add('jiangmiao/auto-pairs')
  call dein#add('ervandew/supertab')
  call dein#add('godlygeek/tabular')
  call dein#add('junegunn/fzf')
  call dein#add('terryma/vim-multiple-cursors')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  " Required:
  call dein#end()
  call dein#save_state()
endif
" Required:
filetype plugin indent on
syntax enable

colorscheme monokai
colorscheme Sunburst


" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------
if executable("ag")
    let g:CtrlSpaceGlobCommand = 'ag -l --nocolor -g ""'
endif
let g:airline#extensions#tabline#enabled = 1

nnoremap <space><space> :Denite file_rec
nnoremap <space>/       :Denite grep:.<cr>
nnoremap <space>s       :Denite buffer<cr>
