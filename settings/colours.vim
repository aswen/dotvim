
noremap <Leader>rg  :color relaxedgreen<CR>   :call UpdateAirlineTheme()<CR>
noremap <Leader>ip  :color inkpot<CR>         :call UpdateAirlineTheme()<CR>
noremap <Leader>ir  :color ir_black<CR>       :call UpdateAirlineTheme()<CR>
noremap <Leader>lu  :color lucius<CR>         :call UpdateAirlineTheme()<CR>
noremap <Leader>mo  :color molokai<CR>        :call UpdateAirlineTheme()<CR>
noremap <Leader>sol :set background=light<CR> :colorscheme solarized<CR> :call UpdateAirlineTheme()<CR>
noremap <Leader>sod :set background=dark<CR>  :colorscheme solarized<CR> :call UpdateAirlineTheme()<CR>

if has('gui_running')
  set background=light
else
  set background=dark
endif

" Default to solarized
colorscheme solarized
