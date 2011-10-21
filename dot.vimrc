"
" Revim (Starting a fresh vim)
"
set nocompatible
let mapleader=","

filetype off

" Pathogen
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

syntax on
filetype on
filetype plugin indent on

syntax enable

" Tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set undofile

let vimrc='~/.vimrc'
let zshrc='~/.zshrc'
nn <leader>u :source <C-R>=vimrc<CR><CR>
nn <leader>v :edit   <C-R>=vimrc<CR><CR>
nn <leader>b :edit <C-R>=zshrc<CR><CR>
