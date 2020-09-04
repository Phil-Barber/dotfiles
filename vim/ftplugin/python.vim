" Check Python files with flake8 and pylint.
let b:ale_linters = ['autopep8', 'mypy', 'flake8']
" Fix Python files with autopep8 and yapf.
let b:ale_fixers = ['autopep8', 'isort']
let g:ale_fix_on_save = 0

let g:python_highlight_all = 1

function! DockerTransform(cmd)
    echo "HELLO"
    cho a:cmd
endfunction

let g:test#custom_transformations = {'docker': function('DockerTransform')}
let g:test#transformation = 'docker'

:set foldmethod=indent
