colors inkpot
if has('gui_gtk2') || has('gui_gtk') || has('gui_gnome') || has('gui_photon') 
  set columns=150 lines=83
"  set guifont=Monospace\ 10
  set guifont=Inconsolata\ 10
elseif has('gui_kde')
  set guifont=Courier\ New/11/-1/5/50/0/0/0/1/0
elseif has('x11')
  set guifont=-*-courier-medium-r-normal-*-*-180-*-*-m-*-*
elseif has('gui_win32')
  set guifont=Luxi_Mono:h12:cANSI
else
  set guifont=Monospace\ 10
endif
"set guioptions=egmrt
"set guioptions-=lrb
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
