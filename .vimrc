if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" plugins
call plug#begin('~/.vim/plugged')
	Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-commentary'
	Plug 'tpope/vim-vinegar'
	Plug 'tpope/vim-fugitive'
	Plug 'tpope/vim-sensible'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'preservim/tagbar'
	Plug 'junegunn/fzf.vim'
call plug#end()


syntax on
filetype plugin indent on
set autoindent
set dir=/tmp
set backupdir=/tmp
set nowrap
set splitright
set splitbelow
set nohlsearch
set incsearch
set nolazyredraw
set timeout ttimeout
set timeoutlen=500
set ttimeoutlen=20


let mapleader = " "

" vim-go conf
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>t <Plug>(go-test)
let g:go_fmt_command = "goimports"

" fzf conf
nnoremap <C-p> :Files<Cr>
nnoremap <C-b> :Buffers<Cr>
noremap <c-]> :call fzf#vim#tags(expand('<cword>'))<cr>
let g:fzf_tags_command = 'ctags -R'
