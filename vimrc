" TODO:
" fix the close error window in syntastic
" create shortcut for @: (repeat last ex command)

" enable all features
set nocompatible

filetype off
" initialize pathogen
call pathogen#infect()
call pathogen#helptags()

" set global default in substitute
set gdefault

" search highlighting
set hlsearch
set incsearch
set ignorecase
set smartcase
nmap <silent> <C-c> :silent noh<CR>
" Keep searchresults in middle of screen
nnoremap n nzz
nnoremap N Nzz

" completetopts for completion (C-n in insertmode)
set completeopt=menuone,longest

" wildmode yeah!
set wildmode=list:longest,full
set wildmenu "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

" Scrolling
set scrolloff=10      " Start scrolling when cursor is 10 lines away from margins.
set sidescrolloff=15
set sidescroll=1

" show the commandI'm typing
set showcmd

" I prefer numbers
set number
" Ctrl+n to toggle linenumbers
nnoremap <C-n> :set invnumber<CR>

" to avoid octal numbering system we remove that:
" (this is to make ctrl+a and ctrl+x work like i expect)
set nrformats=

" syntaxhighlighting is natuurlijk onmisbaar
syntax on

" open browser
"command -bar -nargs=1 OpenURL :!sensible-browser <args>':command -bar -nargs=1 OpenURL :!sensible-browser <args>

" Make Y behave like C and D
noremap Y y$

" let Ctrl-s save a file as well
nmap <C-s> :w<CR>

" tabular: align Puppet stanzas
nnoremap <leader>t :Tabularize /=><CR>

" Nerdtree
nnoremap <leader>d :NERDTreeToggle<cr>

" re-indent entire file and return to where you was
nmap <C-i> msgg=G`s

set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
set smarttab
set smartindent

" let backspace behave like i expect
set backspace=indent,eol,start
nnoremap <BS> dh

" Let CTRL+Backspace and CTRL+Del behave like I expect
inoremap <C-BS> <ESC>ciw
inoremap <C-Del> <ESC>ciw
nnoremap <C-BS> diw
nnoremap <C-Del> diw

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
set history=10000
if has('persistent_undo')
  set undofile
  set undoreload=10000
  set undolevels=10000
  " The // after the undodir tells Vim to name the undo file using the fqfn to
  " avoid filenamecollisions.
  silent !mkdir ~/.vim/undodir > /dev/null 2>&1
  set undodir=~/.vim/undodir//
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
" Wrap lines at convenient points
set linebreak

" Add Command-t
noremap <Leader>v :CommandT<CR>
noremap <Leader>f :CommandT<CR>
"noremap <Leader>f :CommandT ./<CR>
noremap <Leader>b :CommandTBuffer<CR>
noremap <Leader>m :CommandTMRU<CR>

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

" verplaatsen in searchresults
nmap -  :cnext<CR>zz
nmap _  :cprev<CR>zz

" vimgrep should use qquickfix window
autocmd QuickFixCmdPost * botright cwindow 6

" statusline config: airline
let g:airline_enable_branch     = 1
let g:airline_enable_syntastic  = 1
let g:airline_powerline_fonts   = 1
let g:airline_theme             = 'solarized'

noremap <Leader>rg  :color relaxedgreen<CR>
noremap <Leader>ip  :color inkpot<CR>
noremap <Leader>ir  :color ir_black<CR>
noremap <Leader>lu  :color lucius<CR>
noremap <Leader>mo  :color molokai<CR>
noremap <Leader>sol :set background=light<CR> <Bar>:colorscheme solarized<CR>
noremap <Leader>sod :set background=dark<CR> <Bar>:colorscheme solarized<CR>

source ~/.vim_abbreviations

" insert current filename here
inoremap \fn <C-R>=expand("%:t")<CR>

" insert a password that consists of 32 random characters using pwgen.
function PwGen()
    let l:cmd = system('pwgen -s 32 1')
    let l:output = substitute(l:cmd, '[\r\n]*$', '', '')
    execute 'normal a' . l:output
endfunction
inoremap <silent> <Leader>pw <Esc>:call PwGen()<CR>a

" this is for tmux
set t_Co=256

if has('gui_running')
  set background=light
  colorscheme solarized
else
  set background=light
  colorscheme lucius
endif

" I have to check this later
" I want syntastic to ignore the 'inherits module::params" shit
"let g:syntastic_puppet_puppetlint_args = '--no_class_inherits_from_params_class-check --no-class_parameter_defaults-check'

" Let syntastic use Puppet future parser
"let g:syntastic_puppet_puppet_args = "--parser future"

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_perl_checker = 1
let g:syntastic_aggregate_errors = 1
let g:syntastic_exit_checks=1

" Some settings of syntastic I'd like to remember but won't use for now.
"set statusline+=%{SyntasticStatuslineFlag()}
"let g:syntastic_puppet_puppetlint_quiet_messages = { "level" : "warnings" }
"let g:syntastic_debug=1

" thanks Peteris Krumins: http://www.catonmat.net/blog/sudo-vim/
cnoremap sudow w !sudo tee % >/dev/null

" Show a column at char 81
noremap <Leader>8  :set colorcolumn=81<CR>
noremap <Leader>8w :set textwidth=80<CR> :set fo-=l<CR>
noremap <Leader>0  :set colorcolumn=0<CR>
noremap <Leader>0w :set textwidth=0<CR>


" eyaml helper
function EyamlEncrypt()
  " Yank current or last selection to register x
  normal! gv"xy

  "put the content of register x through the eyaml binary and do some magic voodoo to it reg x
  let shellcmd = 'eyaml encrypt --stdin 2>&1 | grep -v "\[hiera" | grep "^string"  | cut -c9-'
  let output=system(shellcmd, @x)

  " strip newlines from output and put in register x
  let @x = substitute(output, '[\r\n]*$', '', '')

  "re-select area and paste register x
  normal! gv"xp

endfunction
" Usage: select what you want to be replaced by encrypted stuff and then press
" F3
map <F3> :call EyamlEncrypt() <CR>

" Do NOT go to Start Of Line when using gg or G
set nosol
