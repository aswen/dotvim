if has('gui_gtk2') || has('gui_gtk') || has('gui_gnome') || has('gui_photon') || has('gui_kde')
  set guifont=Bitstream\ Vera\ Sans\ Mono\ 10
elseif has('mac')
  set guifont=Inconsolata-dz\ for\ Powerline:h14
  set fuoptions=maxvert,maxhorz
  au GUIEnter * set fullscreen
elseif has('x11')
  set guifont=-*-courier-medium-r-normal-*-*-180-*-*-m-*-*
elseif has('gui_win32')
  set guifont=Luxi_Mono:h12:cANSI
else
  set guifont=Bitstream\ Vera\ Sans\ Mono\ 7
endif

" don't autostart nerdtree
" autocmd VimEnter * NERDTree
" and jump back to previous window
" autocmd VimEnter * wincmd p

set nomousehide

" http://vimdoc.sourceforge.net/htmldoc/options.html#'guioptions'
" no menubar
set guioptions-=m
" no toolbar
set guioptions-=T
" no left and rightscrollbar
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" no bottombar
set guioptions-=b
