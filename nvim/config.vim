set number
set numberwidth=1
set mouse=a
set clipboard=unnamed
syntax enable 
set cursorline
set showcmd
set ruler
set encoding=utf-8
set showmatch
set tabstop=2
set shiftwidth=2
set sw=2
set relativenumber
set laststatus=2
set noshowmode
set foldmethod=indent
set splitbelow splitright

let g:python3_host_prog = '~/Config/nvim/.venv/bin/python'
let mapleader = " "

"Open a terminal integarte 
nmap <leader>t :sp<CR> :term<CR> :res -5 <CR>

"Run Scripts
source ~/Config/nvim/run-scripts.vim
