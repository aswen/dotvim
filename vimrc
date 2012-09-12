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

" weet niet meer wat dit doet
set completeopt=menuone,longest
set wildmode=longest,list,full

" laat zien wat je voor commando intiept
set showcmd

" het liefst heb ik regelnummertjes in de kantlijn
set number
" Ctrl+n+Ctrl+n to toggle linenumbers
nmap <C-N> :set invnumber<CR>

" syntaxhighlighting is natuurlijk onmisbaar
syntax on

" tabular: align Puppet stanzas
nnoremap <leader>r :Tabularize /=><cr>

set shiftwidth=2
set tabstop=2
set expandtab
set smartindent

" highlight current line
set cul

" I want to be able to open another file and background current buffer
set hidden

set title
set ttyfast
set autoindent

filetype on
filetype indent on
filetype plugin on

set background=dark
set t_Co=256

" always show statusbar
set laststatus=2

" highlight nutteloze spaties
highlight BadWhitespace ctermbg=red guibg=red

noremap <Leader>f :FufFileWithCurrentBufferDir<CR>
noremap <Leader>F :FufFile<CR>
noremap <Leader>v :FufCoverageFile<CR>
noremap <Leader>b :FufBuffer<CR>
noremap <Leader>c :FufDirWithFullCwd<CR>
noremap <Leader>n :set nonumber<CR>
noremap <Leader>N :set number<CR>
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
"let g:Powerline_symbols = "compatible"
let g:Powerline_symbols = 'unicode'
"let g:Powerline_symbols = 'fancy'
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

noremap <Leader>rg :color relaxedgreen<CR>
noremap <Leader>ip :color inkpot<CR>
noremap <Leader>ir :color ir_black<CR>

"colors ir_black
colors inkpot
set t_Co=256
