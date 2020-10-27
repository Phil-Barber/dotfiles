" Check Python files with flake8 and pylint.
let b:ale_linters = ['mypy', 'flake8', 'black']
" Fix Python files with autopep8 and yapf.
let b:ale_fixers = ['black', 'isort']
let g:ale_fix_on_save = 1
:set colorcolumn=88

let g:python_highlight_all = 1

function! DockerTransform(cmd)
    echo "HELLO"
    cho a:cmd
endfunction

:set foldmethod=indent
