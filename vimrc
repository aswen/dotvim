" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Put plugins below this line:

Plugin 'altercation/vim-colors-solarized'
Plugin 'github/copilot.vim'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'preservim/nerdtree'
Plugin 'rodjek/vim-puppet'
" This should be set before loading Polyglot
let g:polyglot_disabled = ['puppet', 'pascal']
Plugin 'sheerun/vim-polyglot'
Plugin 'godlygeek/tabular'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-syntastic/syntastic'

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
call vundle#end()
filetype plugin indent on

" Source all .vim files in a directory
for file in split(globpath('~/.vim/settings/', '*.vim'), '\n')
  execute 'source' file
endfor
