""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer:	Roy Ens
"		roy.ens@gmail.com
"
" Version:	0.2 - June 24, 2011
"
" Credits:
"	Based off work done by amix the lucky stiff
"	See his blog post at http://amix.dk/blog/post/19486#The-ultimate-vim-configuration-vimrc
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" == Setup Pathogen
" Credits:
"	Pathogen plugin credits go to Tim Pope (http://tpo.pe)
"	Vim and Pathogen configuration credits go to
"	Tammer Saleh see post at http://tammersaleh.com/posts/the-modern-vim-config-with-pathogen
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" == General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set lines of history VIM is to remember
set history=300

" Enable filtype plugin
filetype on
filetype plugin on
filetype indent on

" Set to auto read when file is changed from outside source
set autoread

" When vimrc is edited, reload it
autocmd! bufwritepost .vimrc source ~/.vimrc

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" == Vim interface
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor
set so=7

" Always show current position
set ruler

" Commandbar height
set cmdheight=2

" Configure backspace
set backspace=eol,start,indent

" When using movement keys at the beginning or eol wrap to previous or next
" line
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" Search as you type
set incsearch

" Show matching brackets when cursor is on them
set showmatch

" No sound on errors
set noerrorbells
set novisualbell
set t_vb=

" Linenumbers
set number

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" == Colors
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Enable syntax highlighting
syntax enable

set t_Co=256
colorscheme zenburn

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" == Files and backups
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off. Use with caution
set nobackup
set nowb
set noswapfile

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" == Text related
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab

" When editing text files wrap lines without inserting carriage return
set lbr
" Set line width for wrapping
set tw=500

" Auto indent
set ai

" Smart indent
set si

" Wrap lines
set wrap


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" == PHP Related
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au BufNewFile,BufRead *.php set syntax=php

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" == Javascript Related
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au BufNewFile,BufRead *.js set syntax=javascript
