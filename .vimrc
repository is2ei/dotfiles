" .vimrc
" Author: Issei Horie <horie7188@gmail.com>
" Source: 

" Preamble----------------------------------------------------------
set nocompatible

"Basic options--------------------------------------------------------
set encoding=utf-8
set modelines=0
set autoindent
set showmode
set showcmd
set hidden
set visualbell t_vb=
set cursorline
set ttyfast
set ruler
set number
set norelativenumber
set laststatus=2
set history=1000
"set undofile
set undoreload=10000
set list
set listchars=tab:▶▷,eol:¬,trail:▯,extends:»,precedes:«
set lazyredraw
set showmatch
set matchtime=1
set showbreak=↪

syntax on

"dein Scripts-----------------------------
" Required:
set runtimepath+=/home/ihorie/.vim/bundles//repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/ihorie/.vim/bundles/')
  call dein#begin('/home/ihorie/.vim/bundles/')

  " Let dein manage dein
  " Required:
  call dein#add('/home/ihorie/.vim/bundles//repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('rust-lang/rust.vim')
  call dein#add('nanotech/jellybeans.vim')
  call dein#add('yosssi/vim-ace')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------

colorscheme jellybeans
