set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Color theme
Plugin 'reedes/vim-colors-pencil'
" Ctrl-P
" file fuzzy finder
Plugin 'ctrlpvim/ctrlp.vim'
" Surround
" adds the ability to surround
Plugin 'tpope/vim-surround'
" Repeat
" repeats commands from other plugins
Plugin 'tpope/vim-repeat'
" Commentary
" gcc - comment one line
" gc% - comment a method
" gcgc - uncomment
Plugin 'tpope/vim-commentary'
" CtrlSF
" search tool
" Run :CtrlSF [pattern] to search
"
" need to install searh tool to work
" brew install pt
Plugin 'dyng/ctrlsf.vim'
" Fugitive
" Vim + Git
" :G to run
" :Gitdiffsplit
Plugin 'tpope/vim-fugitive'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Settings from Ruthan
set expandtab
set tabstop=2
set list listchars=trail:•
" set Vim-specific sequences for RGB colors
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

colorscheme pencil

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" yank to clipboard
if has("clipboard")
  set clipboard=unnamed " copy to the system clipboard

  if has("unnamedplus") " X11 support
    set clipboard+=unnamedplus
  endif
endif
