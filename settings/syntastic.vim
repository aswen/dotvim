set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_perl_checker = 1
let g:syntastic_aggregate_errors = 1
let g:syntastic_exit_checks=1


" I have to check this later
" I want syntastic to ignore the 'inherits module::params" shit
"let g:syntastic_puppet_puppetlint_args = '--no_class_inherits_from_params_class-check --no-class_parameter_defaults-check'

" Let syntastic use Puppet future parser
"let g:syntastic_puppet_puppet_args = "--parser future"

" Some settings of syntastic I'd like to remember but won't use for now.
"set statusline+=%{SyntasticStatuslineFlag()}
"let g:syntastic_puppet_puppetlint_quiet_messages = { "level" : "warnings" }
"let g:syntastic_debug=1
