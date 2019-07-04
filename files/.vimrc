" General Config
set nocompatible
filetype off
syntax on

" Vundle plugin manager
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'ntpeters/vim-better-whitespace' " Remove whitespace at the end of line
call vundle#end()

" vim-plug plugin manager
" https://github.com/junegunn/vim-plug
call plug#begin()
Plug '~/.vim/mplugins/vim-signify' "https://github.com/mhinz/vim-signify
call plug#end()

" Force myself to not use arrow key and start using hjkl instead.
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>

" Turn Off Swap Files
set noswapfile
set nobackup
set nowb

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.
silent !mkdir ~/.vim/backups > /dev/null 2>&1
if v:version >= 703
  set undodir=~/.vim/backups
  set undofile
endif

" Start scrolling when we're 8 lines away from margins
set scrolloff=8
set sidescrolloff=15
set sidescroll=1

" Set horizontal and Vertical Line
autocmd WinLeave * set nocursorline nocursorcolumn
autocmd WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn

" Theme Solarized
execute pathogen#infect()
set background=dark
colorscheme solarized8

" strip whitespace on save
autocmd BufWritePre * StripWhitespace

" Returning to the last edit position when opening files
autocmd BufReadPost *
 \ if line("'\"") > 0 && line("'\"") <= line("$") |
 \   exe "normal! g`\"" |
 \ endif

set number " line number by default
set backspace=2 " make backspace work like most other apps

" Open VIM in relative numbering by default.
" In insert mode turn off relative numbering.
" When Insert mode is turned off turn on relative numbering again
set relativenumber " use relativenumber by default
autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber

" using colorcolumn to get a column at 80 lines.
set colorcolumn=80 " absolute columns to highlight
