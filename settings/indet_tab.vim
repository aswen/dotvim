set autoindent
set expandtab
set shiftwidth=2
set smartindent
set smarttab
set softtabstop=2
set tabstop=2

filetype on
filetype indent on
filetype plugin on

autocmd FileType python setlocal shiftwidth=2
autocmd FileType python setlocal tabstop=2
autocmd FileType python setlocal softtabstop=2

" re-indent entire file and return to where you was
nmap <C-i> msgg=G`s
