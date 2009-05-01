
" An example for a vimrc file.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2002 Sep 19
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"	    for OpenVMS:  sys$login:.vimrc

" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file
endif
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries
" let &guioptions = substitute(&guioptions, "t", "", "g")

" Don't use Ex mode, use Q for formatting
map Q gq

" This is an alternative that also works in block mode, but the deleted
" text is lost and it only works for putting the current register.
"vnoremap p "_dp

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

"colorscheme mine
colorscheme desert

"nmap - :set paste<CR>:r !pbpaste<CR>:set nopaste<CR>
"nmap _ :.w !pbcopy<CR><CR>
"vmap _ :w !pbcopy<CR><CR>

"nmap _ :.w !nkf -Ws¥|pbcopy<CR><CR>
"vmap _ :w !nkf -Ws¥|pbcopy<CR><CR>
"nmap - :set paste<CR>:r !pbpaste¥|nkf -Sw<CR>:set nopaste<CR> 

set tabstop=2
set number
set shiftwidth=2
set expandtab
set autoindent
set showmode
set showmatch
set nocompatible
syntax on
filetype on
filetype indent on
filetype plugin on

let skk_jisyo = '~/.skk-jisyo'
"let skk_large_jisyo = $VIM . '/dict/skk/SKK-JISYO.L'
let skk_large_jisyo = '~/Library/AquaSKK/SKK-JISYO.L'
let skk_auto_save_jisyo = 1
let skk_keep_state = 0
let skk_egg_like_newline = 1
let skk_show_annotation = 1
let skk_use_face = 1

"if !exists("skk_user_rom_kana_rules")
"  let skk_user_rom_kana_rules = ""
"    ¥. "。 . .¥<NL>"
"    ¥. "、 , ,¥<NL>"
"endif

