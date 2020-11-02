" plugins
call plug#begin('~/.vim/plugged')
	Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-commentary'
	Plug 'tpope/vim-vinegar'
	Plug 'tpope/vim-fugitive'
	Plug 'tpope/vim-sensible'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
call plug#end()


" vim config
set autoindent
filetype plugin indent on
set dir=/tmp
set backupdir=/tmp
syntax on
set nowrap
set splitright
set splitbelow
set nonumber
set nohlsearch
set incsearch
set nolazyredraw
set timeout ttimeout
set timeoutlen=500
set ttimeoutlen=20


let mapleader = ","
let g:go_fmt_command = "goimports"

" vim-go mappings
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>t <Plug>(go-test)
