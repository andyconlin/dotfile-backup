filetype off     " required (for Vundle?)
" set the runtime path to include Vundle and initialize

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'emmetio/emmet'
Plugin 'KeitaNakamura/neodark.vim'	
Plugin 'vim-airline/vim-airline'
Plugin 'preservim/nerdtree'
Plugin 'edkolev/promptline.vim'

" All of your Plugins must be added before the following line
call vundle#end()     " required
