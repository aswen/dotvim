function! BooleanToggle()
  " Save the current cursor position
  let l:cursor_pos = getpos(".")

  " Move cursor to the beginning of the line
  normal! 0

  let l:line = getline('.')

  let l:pairs = {
        \ 'true': 'false',
        \ 'false': 'true',
        \ 'on': 'off',
        \ 'off': 'on',
        \ 'yes': 'no',
        \ 'no': 'yes',
        \ 'enabled': 'disabled',
        \ 'disabled': 'enabled',
        \ 'development': 'staging',
        \ 'staging': 'production',
        \ 'production': 'staging',
        \ 'DEBUG': 'INFO',
        \ 'INFO': 'DEBUG',
        \ }

  for l:key in keys(l:pairs)
    if l:line =~# '\<' . l:key . '\>'
      call setline('.', substitute(l:line, '\<' . l:key . '\>', l:pairs[l:key], ''))
      return
    endif
  endfor

  echom "BooleanToggle: No toggleable value found on this line"

  " Restore the original cursor position
  call setpos('.', l:cursor_pos)
endfunction

nnoremap <C-d> :call BooleanToggle()<CR>
