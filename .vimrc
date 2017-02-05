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
set title
set ttyfast
set undoreload=10000
set visualbell t_vb=

" Line Return ----------------------------------------------------------------------------------------
" Make sure Vim returns to the same line when you reopen a file.
" Thanks to Steve Losh http://bitbucket.org/sjl/dotfiles/src/tip/vim/
augroup line_return
    au!
    au BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \     execute 'normal! g`"zvzz' |
        \ endif
augroup END

" Backups -----------------------------------------------------------------------------------------------------
set undofile
set undodir=~/.vim/tmp/undo//
set backup
set backupdir=~/.vim/tmp/backup//
set directory=~/.vim/tmp/swap//

" Search ------------------------------------------
set incsearch
set hlsearch

" dein Scripts --------------------------------------------------------------------------------------------
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
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

" Color scheme ---------------------------------------
syntax on
colorscheme jellybeans

" Tabs, Indent
set expandtab
