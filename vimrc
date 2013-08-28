" TODO:
" fix the close error window in syntastic
" create shortcut for @: (repeat last ex command)

" enable all features
set nocompatible

filetype off
" initialize pathogen
call pathogen#infect()
call pathogen#helptags()


" search highlighting
set hlsearch
set incsearch
set ignorecase
set smartcase
nmap <silent> <C-c> :silent noh<CR>

" completetopts for completion (C-n in insertmode)
set completeopt=menuone,longest

" wildmode yeah!
set wildmode=list:longest,full

" show the commandI'm typing
set showcmd

" I prefer numbers
set number
" Ctrl+n to toggle linenumbers
nnoremap <C-n> :set invnumber<CR>

" syntaxhighlighting is natuurlijk onmisbaar
syntax on

" open browser
"command -bar -nargs=1 OpenURL :!sensible-browser <args>':command -bar -nargs=1 OpenURL :!sensible-browser <args>

" Make Y behave like c and d
noremap Y y$

" let Ctrl-s save a file as well
nmap <C-s> :w
nmap <C-S-s> :wa

" tabular: align Puppet stanzas
nnoremap <leader>t :Tabularize /=><CR>

" Nerdtree
nnoremap <leader>d :NERDTreeToggle<cr>

" re-indent entire file and return to where you was
nmap <C-i> msgg=G`s

" select entire file
nmap <C-a> ggVG

set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
set smarttab
set smartindent

" let backspace behave like i expect
set backspace=indent,eol,start
nnoremap <BS> dh

" highlight current line
set cul

" ik wil modelines lezen en gebruiken
set modeline
set modelines=3

" I want to be able to open another file and background current buffer
set hidden

set title
set ttyfast
set autoindent

filetype on
filetype indent on
filetype plugin on

" always show statusbar
set laststatus=2

" history and undo
set history=1000
set undolevels=1000
if version >= 703
  set undodir=~/.vim/undodir
endif

" highlight nutteloze spaties
"highlight ExtraWhitespace ctermbg=red guibg=red
" The following alternative may be less obtrusive.
"highlight ExtraWhitespace ctermbg=darkgreen guibg=lightgreen
" Try the following if your GUI uses a dark background.
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
" However, be aware that future colorscheme commands may clear all user-defined highlight groups. Using,
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
"before the first colorscheme command will ensure that the highlight group gets created and is not cleared by future colorscheme commands.
" Show trailing whitespace:
match ExtraWhitespace /\s\+$/
" Show trailing whitespace and spaces before a tab:
match ExtraWhitespace /\s\+$\| \+\ze\t/
" Show tabs that are not at the start of a line:
match ExtraWhitespace /[^\t]\zs\t\+/
" Show spaces used for indenting (so you use only tabs for indenting).
match ExtraWhitespace /^\t*\zs \+/
"Alternatively, the following pattern will match trailing whitespace, except when typing at the end of a line.
match ExtraWhitespace /\s\+\%#\@<!$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
" remove trailing white-spaces with <leader>W
nnoremap <leader>W :%s/\s\+$//<cr>:noh<CR>

" toggle word wrap
nnoremap <leader>w :set wrap!<cr>

noremap <Leader>f :FufFileWithCurrentBufferDir<CR>
noremap <Leader>F :FufFile<CR>
noremap <Leader>v :FufCoverageFile<CR>
noremap <Leader>b :FufBuffer<CR>
noremap <Leader>c :FufDirWithFullCwd<CR>
noremap <F1> :FufHelp<CR>

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
nnoremap <C-d> :tabclose<CR>
nmap <S-Right> gt
nmap <S-Left> gT

" Since I use linux, I want this
let g:clipbrdDefaultReg = '+'

" verplaatsen in searchresults
nmap -  :cnext<CR>
nmap _  :cprev<CR>

" vimgrep should use qquickfix window
autocmd QuickFixCmdPost * botright cwindow 6

" don't use fancy symbols in statusline
"let g:Powerline_symbols = 'compatible'
"let g:Powerline_symbols = 'unicode'
let g:Powerline_symbols = 'fancy'
"let g:Powerline_stl_path_style = 'short'
let g:Powerline_colorscheme = 'skwp'
let g:Powerline_mode_n = 'N '
let g:Powerline_mode_i = 'I '
let g:Powerline_mode_r = 'R '
let g:Powerline_mode_v = 'V '
let g:Powerline_mode_V = 'VL'
let g:Powerline_mode_cv = 'VC'
let g:Powerline_mode_s = 'S '
let g:Powerline_mode_S = 'SL'
let g:Powerline_mode_cs = 'SC'

noremap <Leader>rg  :color relaxedgreen<CR>
noremap <Leader>ip  :color inkpot<CR>
noremap <Leader>ir  :color ir_black<CR>
noremap <Leader>mo  :color molokai<CR>
noremap <Leader>sol :set background=light<CR> <Bar>:colorscheme solarized<CR>
noremap <Leader>sod :set background=dark<CR> <Bar>:colorscheme solarized<CR>

source ~/.vim_abbreviations

" insert current filename here
inoremap \fn <C-R>=expand("%:t")<CR>

" this is for tmux
set t_Co=256

if has('gui_running')
  set background=light
  colorscheme solarized
else
  set background=dark
  colorscheme inkpot
endif
