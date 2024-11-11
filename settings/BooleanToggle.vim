function! BooleanToggle()
  " Save the current cursor position
  let l:cursor_pos = getpos(".")

  " Move cursor to the beginning of the line
  normal! 0

  " Search for the first occurrence of 'true', 'false', '1', '0', 'yes', 'no', 'on', or 'off' on the line
  if search('\v\c(true|false|0|1|yes|no|on|off)', 'c')
    let l:word = expand("<cword>")
    if l:word ==# "true"
      execute "normal! ciwfalse"
    elseif l:word ==# "false"
      execute "normal! ciwtrue"
    elseif l:word ==# "1"
      execute "normal! ciw0"
    elseif l:word ==# "0"
      execute "normal! ciw1"
    elseif l:word ==# "True"
      execute "normal! ciwFalse"
    elseif l:word ==# "False"
      execute "normal! ciwTrue"
    elseif l:word ==# "yes"
      execute "normal! ciwno"
    elseif l:word ==# "no"
      execute "normal! ciwyes"
    elseif l:word ==# "Yes"
      execute "normal! ciwNo"
    elseif l:word ==# "No"
      execute "normal! ciwYes"
    elseif l:word ==# "on"
      execute "normal! ciwoff"
    elseif l:word ==# "off"
      execute "normal! ciwon"
    elseif l:word ==# "On"
      execute "normal! ciwOff"
    elseif l:word ==# "Off"
      execute "normal! ciwOn"
    endif
  endif
  " Restore the original cursor position
  call setpos('.', l:cursor_pos)
endfunction

nnoremap <C-d> :call BooleanToggle()<CR>
