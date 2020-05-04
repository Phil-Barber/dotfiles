" Check Python files with flake8 and pylint.
let b:ale_linters = ['flake8', 'mypy']
" Fix Python files with autopep8 and yapf.
let b:ale_fixers = ['yapf']

" python syntax
let g:python_highlight_all = 1
let b:ale_fix_on_save=0

function! DockerTransform(cmd)
    echo "HELLO"
    cho a:cmd
endfunction

let g:test#custom_transformations = {'docker': function('DockerTransform')}
let g:test#transformation = 'docker'
