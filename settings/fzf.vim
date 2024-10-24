" Initialize configuration dictionary
"let g:fzf_layout = { 'window': { 'width': 1, 'height': 0.4, 'yoffset': 1, 'border': 'none' } }
let g:fzf_layout = { 'window': { 'width': 1, 'height': 0.4, 'xoffset': 0, 'yoffset': 0, 'border': 'none' } }

nnoremap <C-b> :Buffers<CR>
nnoremap <C-e> :Files<CR>
nnoremap <C-f> :Files<CR>

let g:fzf_preview_window = []
let g:fzf_command = 'git ls-files --cached --others --exclude-standard || find . -type f'
