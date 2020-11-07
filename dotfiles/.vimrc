set nocompatible     " be iMproved, required (for Vundle?)

" packages/vundle handled in separate file
source ~/.vim/packages.vim

filetype plugin indent on

" now using airline and promptline
" promptline is configured at ~/.promptline2.sh
" and was customized after initial file generation
" will likely continue hard code customizations directly in the .sh file
"
" let g:powerline_pycmd = 'py3'
" let g:powerline_loaded = 1    " disable powerline in vim
" set rtp+=$POWERLINE_ROOT/powerline/bindings/vim
" let g:powerline_pycmd = 'y3'
" let g:airline_powerline_fonts = 1
" let g:promptline_preset = {
"         \'a' : [ promptline#slices#host() ],
"         \'b' : [ promptline#slices#user() ],
"         \'c' : [ promptline#slices#cwd() ],
"         \'y' : [ promptline#slices#vcs_branch(), promptline#slices#git_status() ],
"         \'warn' : [ promptline#slices#last_exit_code() ]}
" let g:promptline_theme = 'neodark'

syntax on     " Enable syntax highlighting

" COLORS
" let g:neodark#terminal_transparent = 1
let g:neodark#use_custom_terminal_theme = 1
let g:neodark#use_256color = 1
colorscheme neodark     " set in ~/.vim/packages.vim
set termguicolors


:set whichwrap+=>,l
:set whichwrap+=<,h

set encoding=UTF-8      " Set the default file encoding to UTF-8

" INDENTS & TABS
set autoindent      		" Indent as with previous line
set expandtab           " Replace tabs with spaces
set smarttab	        	" Be smart about replacing tabs with spaces
set tabstop=2           " Number of spaces that a <Tab> counts for
set shiftwidth=2        " Number of spaces for each step of (auto) indent

" LINE BREAKS
set wrap linebreak      " Wrap lines by default
set showbreak=↪ 

set mouse=a
set clipboard=unnamed   " Enabling use of system clipboard
set ignorecase	      	" Searching is case insensitive
set hlsearch	        	" Highlight search results
set number          		" Show line numbers
set ruler           		" Always show status bar on bottom
set wildmenu	        	" allow tab completion of vim options
set cursorline	      	" Highlight current line
set vb                  " Use visual bell instead of beeping
" set laststatus=2        " https://github.com/powerline/powerline/issues/1595#issuecomment-629666153
set autoread            " Automatically read a file that has been changed
set backupcopy=yes      " https://vi.stackexchange.com/a/19901

" turn relative line numbers on
set relativenumber
set rnu

" ALIASES, ETC.
let mapleader=','
nmap <leader>ne :NERDTreeFocus<cr>
nnoremap ; :
vnoremap ; :
