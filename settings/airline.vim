let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#show_splits = 0  " Only show tabs, not splits

" statusline config: airline
let g:airline_enable_branch     = 1
let g:airline_enable_syntastic  = 1
let g:airline_powerline_fonts   = 1
let g:airline_theme             = 'solarized'

" Define a function to update airline theme based on colorscheme
function! UpdateAirlineTheme()
  if &background == 'light'
    let g:airline_theme = 'solarized'
  else
    let g:airline_theme = 'solarized'
  endif
endfunction
