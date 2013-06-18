colors inkpot
if has('gui_gtk2') || has('gui_gtk') || has('gui_gnome') || has('gui_photon') || has('gui_kde')
  set guifont=Inconsolata\ 9
elseif has('gui_mac')
  set guifont=Inconsolata\ 9
  set fuoptions=maxvert,maxhorz
  au GUIEnter * set fullscreen
elseif has('x11')
  set guifont=-*-courier-medium-r-normal-*-*-180-*-*-m-*-*
elseif has('gui_win32')
  set guifont=Luxi_Mono:h12:cANSI
else
  set guifont=Monospace\ 10
endif

" start nerdtree
autocmd VimEnter * NERDTree
" and jump back to previous window
autocmd VimEnter * wincmd p

set nomousehide

" http://vimdoc.sourceforge.net/htmldoc/options.html#'guioptions'
" no menubar
set guioptions-=m
" no toolbar
set guioptions-=T
" no left and rightscrollbar
set guioptions-=lLrR
" no bottombar
set guioptions-=b
