
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
