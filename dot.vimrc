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
set background=dark
colorscheme solarized

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
set incsearch
set undofile

let vimrc='~/.vimrc'
let zshrc='~/.zshrc'
nn <leader>u :source <C-R>=vimrc<CR><CR>
nn <leader>v :edit   <C-R>=vimrc<CR><CR>
nn <leader>b :edit <C-R>=zshrc<CR><CR>

" Tasklist 
map <leader>td <Plug>TaskList

" Python customisations
let g:pyflakes_use_quickfix = 0
let g:pep8_map='<leader>8'
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

" NERDTree
map <leader>n :NERDTreeToggle<CR>

" ack
nmap <leader>a <Esc>:Ack!

" Change Command-t bindings
nnoremap <silent> <Leader>r :CommandT<CR>
nnoremap <silent> <Leader>b :CommandTBuffer<CR>

" Status line with git info
set statusline=[%l,%v\ %P%M]\ %f\ %r%h%w\ (%{&ff})\ %{fugitive#statusline()}

set guifont=Bitstream\ Vera\ Sans\ Mono\ 8

" Display whitespaces
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.
