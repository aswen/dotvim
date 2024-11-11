if executable('ag')
    " Note we extract the column as well as the file and line number
    set grepprg=ag\ --nogroup\ --nocolor\ --column\ --hidden
    set grepformat=%f:%l:%c%m
endif

nnoremap <C-g> :Ag<Cr>
