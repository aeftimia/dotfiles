set nomodeline
set encoding=utf8

" Stop word wrapping
set nowrap
" Except... on Makrdown. That's good stuff.
autocmd FileType markdown setlocal wrap
" Adjust system undo levels set undolevels=100

" Use system clipboard
set clipboard=unnamed

" Set tab width and convert tabs to spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab

" Don't let Vim hide characters or make loud dings
set conceallevel=1
set belloff=all

" Number gutter with relative line numbers
" Relative lines encourage smarter movements in vim
set number
set relativenumber

" Use search highlighting
set hlsearch

" Space above/beside cursor from screen edges
set scrolloff=1
set sidescrolloff=5

" Enable mouse support
set mouse=a
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

" Filetype indent
filetype indent on

call plug#begin('~/.local/share/vim/plugged')
" NerdTree
Plug 'scrooloose/nerdtree'

" terraform
Plug 'hashivim/vim-terraform'

" solidity
Plug 'tomlion/vim-solidity'

" golang
Plug 'fatih/vim-go'

" jsx
Plug 'mxw/vim-jsx'

" EditorConfig
Plug 'editorconfig/editorconfig-vim'

" surround
Plug 'tpope/vim-surround'
call plug#end()

" Configuration 
" indentLine
let g:indentLine_enabled = 1
let g:indentLine_char = "⟩"

" Leader
let mapleader="\<SPACE>"

" yank to clipboard
if has("clipboard")
   set clipboard=unnamed " copy to the system clipboard
endif

" NERDTree
noremap <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
