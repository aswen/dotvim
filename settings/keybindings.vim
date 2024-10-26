" Enable mouse support
set mouse=a

" Set tab controls
nnoremap <A-[> :tabprevious<CR>
nnoremap <A-]> :tabnext<CR>
"nnoremap <C-j> :tabnew<CR>

nnoremap <Esc> <Esc>

" Autosuggestion accept
inoremap <expr> <c-space> pumvisible() ? coc#_select_confirm() : coc#refresh()

" insert current filename here
inoremap \fn <C-R>=expand("%:t")<CR>

" insert a password that consists of 32 random characters using pwgen.
function PwGen()
    let l:cmd = system('pwgen -sBcn 32 1')
    let l:output = substitute(l:cmd, '[\r\n]*$', '', '')
    execute 'normal a' . l:output
endfunction
inoremap <silent> <Leader>pw <Esc>:call PwGen()<CR>a

" Paste for elitebook gen9 without physical insert key
" Map Ctrl+v to paste in insert mode
inoremap <C-v> <C-r>+
