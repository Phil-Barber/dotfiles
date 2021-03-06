set tabstop=2
set shiftwidth=2

let b:ale_linter_aliases = ['css', 'javascript']
" let b:ale_linters = ['eslint', 'stylelint', 'flow-language-server']
let b:ale_linters = ['eslint']

" Fix files with prettier, and then ESLint.
" let b:ale_fixers = ['eslint', 'prettier', 'stylelint']
let b:ale_fixers = ['eslint', 'prettier']

" js syntax
autocmd BufReadPre *.js let b:javascript_lib_use_angularjs = 1
autocmd BufReadPre *.js let b:javascript_lib_use_angularui = 1
autocmd BufReadPre *.js let b:javascript_lib_use_react = 1
autocmd BufReadPre *.js let b:javascript_lib_use_jquery = 1
autocmd BufReadPre *.js let b:javascript_lib_use_underscore = 1
autocmd BufReadPre *.js let b:javascript_lib_use_backbone = 0
let g:javascript_plugin_flow = 1

set colorcolumn=80
