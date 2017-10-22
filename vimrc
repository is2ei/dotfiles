" .vimrc
" Author: Issei Horie <horie7188@gmail.com>
" Source: https://github.com/ihorie/dotfiles

" Preamble --------------------------------------------------------------------------------------------
"                                           ..
"                                          .::::.
"                             ___________ :;;;;:`____________
"                             \_________/ ?????L \__________/
"                               |.....| ????????> :.......'
"                               |:::::| $$$$$$"`.:::::::' ,
"                              ,|:::::| $$$$"`.:::::::' .OOS.
"                            ,7D|;;;;;| $$"`.;;;;;;;' .OOO888S.
"                          .GDDD|;;;;;| ?`.;;;;;;;' .OO8DDDDDNNS.
"                           'DDO|IIIII| .7IIIII7' .DDDDDDDDNNNF`
"                             'D|IIIIII7IIIII7' .DDDDDDDDNNNF`
"                               |EEEEEEEEEE7' .DDDDDDDNNNNF`
"                               |EEEEEEEEZ' .DDDDDDDDNNNF`
"                               |888888Z' .DDDDDDDDNNNF`
"                               |8888Z' ,DDDDDDDNNNNF`
"                               |88Z'    "DNNNNNNN"
"                               '"'        "MMMM"
"                                            ""
"
"    ___    ____                                            __   _         _    ________  ___
"   /   |  / / /  __  ______  __  __   ____  ___  ___  ____/ /  (_)____   | |  / /  _/  |/  /
"  / /| | / / /  / / / / __ \/ / / /  / __ \/ _ \/ _ \/ __  /  / / ___/   | | / // // /|_/ /
" / ___ |/ / /  / /_/ / /_/ / /_/ /  / / / /  __/  __/ /_/ /  / (__  )    | |/ // // /  / /
"/_/  |_/_/_/   \__, /\____/\__,_/  /_/ /_/\___/\___/\__,_/  /_/____/     |___/___/_/  /_/
"/____/

" Thanks to @b4b4r07 https://gist.github.com/b4b4r07/70c68ec76f3d6e1ada82

"Basic options ----------------------------------------------------------------------------------------
set autoindent
set autoread
set cursorline
set encoding=utf-8
set hidden
set history=1000
set laststatus=2
set list
set listchars=tab:▶▷,eol:¬,trail:▯,extends:»,precedes:«
set lazyredraw
set modelines=0
set matchtime=1
set number
set nocompatible
set norelativenumber
set ruler
set showmode
set showcmd
set showmatch
set showbreak=↪
set splitbelow
set splitright
set ttyfast
set undoreload=10000
set visualbell t_vb=

" Line Return ----------------------------------------------------------------------------
" Make sure Vim returns to the same line when you reopen a file.
" Thanks to Steve Losh http://bitbucket.org/sjl/dotfiles/src/tip/vim/
augroup line_return
    au!
    au BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \     execute 'normal! g`"zvzz' |
        \ endif
augroup END

" Backups ------------------------------------------------------------------------
set undofile
set undodir=~/.vim/tmp/undo/
set backup
set backupdir=~/.vim/tmp/backup/
set directory=~/.vim/tmp/swap/

" Search ------------------------------------------
set incsearch
set hlsearch

" dein Scripts --------------------------------------------------------------------------
if &compatible
   set nocompatible
endif
set runtimepath+=~/.vim/bundles/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.vim/bundles/')
  call dein#begin('~/.vim/bundles/')

  call dein#add('~/.vim/bundles/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/neocomplete.vim')

  " Add or remove your plugins here:
  call dein#add('rust-lang/rust.vim')
  call dein#add('nanotech/jellybeans.vim')

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

"End dein Scripts-------------------------

" Color scheme ---------------------------------------
syntax on
colorscheme jellybeans

" Tabs, Indent
set expandtab
