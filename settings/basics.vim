" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype off " Required off for vundle

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Add numbers to each line on the left-hand side.
set number
"
" Ctrl+n to toggle linenumbers
nnoremap <C-n> :set invnumber<CR>

" to avoid octal numbering system we remove that:
" (this is to make ctrl+a and ctrl+x work like i expect)
set nrformats=

" set global default in substitute
set gdefault

" Turn syntax highlighting on.
syntax on

" completetopts for completion (C-n in insertmode)
set completeopt=menuone,longest
"
" Scrolling
set scrolloff=10      " Start scrolling when cursor is 10 lines away from margins.
set sidescrolloff=15
set sidescroll=1

" show the commandI'm typing
set showcmd

" Highlight cursor line underneath the cursor horizontally.
"set cursorline

" Highlight cursor line underneath the cursor vertically.
"set cursorcolumn

" Show the mode you are on the last line.
set showmode

" Set the commands to save in history default number is 20.
set history=1000

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest,full

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx,*.webp

set termwinsize=12x0   " Set terminal size
set splitbelow         " Always split below

" Set backup and
set backupdir=~/.vim/backup//
set directory=~/.vim/swp//

autocmd TextYankPost * silent! call system('wl-copy', @0)

" Do NOT go to Start Of Line when using gg or G
set nosol

" Make Y behave like C and D
noremap Y y$

" let Ctrl-s save a file as well
nmap <C-s> :w<CR>
nmap <C-S> :wa<CR>
"
" thanks Peteris Krumins: http://www.catonmat.net/blog/sudo-vim/
cnoremap sudow w !sudo tee % >/dev/null


" let backspace behave like i expect
set backspace=indent,eol,start
nnoremap <BS> dh

" Let CTRL+Backspace and CTRL+Del behave like I expect
inoremap <C-BS> <ESC>ciw
inoremap <C-Del> <ESC>ciw
nnoremap <C-BS> diw
nnoremap <C-Del> diw

" highlight current line
set nocul

set modeline
set modelines=3

" I want to be able to open another file and background current buffer
set hidden

set title
set ttyfast

" always show statusbar
set laststatus=2

" toggle word wrap
"nnoremap <leader>w :set wrap!<cr>
" Wrap lines at convenient points
"set linebreak

" Movement between windows with ^hjkl
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
nmap <C-Left> <C-w>h
nmap <C-Down> <C-w>j
nmap <C-Up> <C-w>k
nmap <C-Right> <C-w>l

inoremap <C-h>     <ESC><C-w>h
inoremap <C-j>     <ESC><C-w>j
inoremap <C-k>     <ESC><C-w>k
inoremap <C-l>     <ESC><C-w>l
inoremap <C-Left>  <ESC><C-w>h
inoremap <C-Down>  <ESC><C-w>j
inoremap <C-Up>    <ESC><C-w>k
inoremap <C-Right> <ESC><C-w>l

" tabs
nnoremap <C-t> :tabnew<CR>
nmap <S-Right> gt
nmap <S-Left> gT

" Since I use linux, I want this
let g:clipbrdDefaultReg = '+'

" move in searchresults
nmap -  :cnext<CR>zz
nmap _  :cprev<CR>zz

" vimgrep should use qquickfix window
autocmd QuickFixCmdPost * botright cwindow 6

" Show a column at char 81
noremap <Leader>8  :set colorcolumn=81<CR>
noremap <Leader>8w :set textwidth=80<CR> :set fo-=l<CR>
noremap <Leader>0  :set colorcolumn=0<CR>
noremap <Leader>0w :set textwidth=0<CR>
