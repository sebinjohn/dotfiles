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
  call dein#add('Shougo/denite.nvim')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/vimshell')
  call dein#add('Shougo/vimproc.vim', {'build' : 'make'})
  call dein#add('Xuyuanp/nerdtree-git-plugin')
  call dein#add('easymotion/vim-easymotion')
  call dein#add('ervandew/supertab')
  call dein#add('godlygeek/tabular')
  call dein#add('jiangmiao/auto-pairs')
  call dein#add('jreybert/vimagit')
  call dein#add('junegunn/fzf')
  call dein#add('junegunn/goyo.vim')
  call dein#add('kien/ctrlp.vim')
  call dein#add('Yggdroot/indentLine')
  call dein#add('scrooloose/nerdtree')
  call dein#add('terryma/vim-multiple-cursors')
  call dein#add('tpope/vim-commentary')
  call dein#add('tpope/vim-fugitive')
  call dein#add('tpope/vim-projectionist')
  call dein#add('tpope/vim-repeat')
  call dein#add('tpope/vim-surround')
  call dein#add('tpope/vim-unimpaired')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('vim-ctrlspace/vim-ctrlspace')
  call dein#add('vim-scripts/YankRing.vim')
  call dein#add('vim-syntastic/syntastic')
  call dein#add('kshenoy/vim-signature')
  call dein#add('scrooloose/nerdcommenter')
  call dein#add('fatih/vim-go')
  call dein#add('ntpeters/vim-better-whitespace')
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

let g:indent_guides_guide_size = 1
let g:indent_guides_color_change_percent = 3
let g:indent_guides_enable_on_vim_startup = 1

nnoremap <space><space> :Denite file_rec
nnoremap <space>/       :Denite grep:.<cr>
nnoremap <space>s       :Denite buffer<cr>
let mapleader = "\<space>"

" NERDTree toggle
nmap <leader>nt = :NERDTreeToggle<cr>
" Open NerdTree if no file is specifed to vim
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Close NERDTree when it is the last window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
    exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
    exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('jade'   , 'green'   , 'none' , 'green'   , '#151515')
call NERDTreeHighlightFile('ini'    , 'yellow'  , 'none' , 'yellow'  , '#151515')
call NERDTreeHighlightFile('md'     , 'blue'    , 'none' , '#3366FF' , '#151515')
call NERDTreeHighlightFile('yml'    , 'yellow'  , 'none' , 'yellow'  , '#151515')
call NERDTreeHighlightFile('config' , 'yellow'  , 'none' , 'yellow'  , '#151515')
call NERDTreeHighlightFile('conf'   , 'yellow'  , 'none' , 'yellow'  , '#151515')
call NERDTreeHighlightFile('json'   , 'yellow'  , 'none' , 'yellow'  , '#151515')
call NERDTreeHighlightFile('sh'     , 'yellow'  , 'none' , 'yellow'  , '#151515')
call NERDTreeHighlightFile('styl'   , 'cyan'    , 'none' , 'cyan'    , '#151515')
call NERDTreeHighlightFile('css'    , 'cyan'    , 'none' , 'cyan'    , '#151515')
call NERDTreeHighlightFile('coffee' , 'Red'     , 'none' , 'red'     , '#151515')
call NERDTreeHighlightFile('py'     , 'Red'     , 'none' , '#ffa500' , '#151515')
call NERDTreeHighlightFile('go'     , 'Magenta' , 'none' , '#ff00ff' , '#151515')

au BufRead,BufNewFile *.go set filetype=go
let g:indentLine_char = 'c'
let g:indentLine_setColors = 0
highlight Cursor guifg=white guibg=black
highlight iCursor guifg=white guibg=steelblue
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10
