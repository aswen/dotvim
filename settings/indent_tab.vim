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

autocmd FileType markdown setlocal expandtab shiftwidth=2 softtabstop=2 tabstop=2
autocmd FileType python setlocal expandtab shiftwidth=2 softtabstop=2 tabstop=2

" re-indent entire file and return to where you was
nmap <C-i> msgg=G`s
