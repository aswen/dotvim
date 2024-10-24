
set incsearch  " Enable incremental search
set hlsearch   " Enable highlight search

" Ignore capital letters during search.
set ignorecase

" Map CTRL+C to stop highlighting
nmap <silent> <C-c> :silent noh<CR>

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Keep searchresults in middle of screen
nnoremap n nzz
nnoremap N Nzz
