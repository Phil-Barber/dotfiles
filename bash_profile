source ~/.bash_kube
source ~/.credentials

export PS1="[\$(get_context)|\$(get_namespace)] \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] \n$ "

[ -f /Library/Developer/CommandLineTools/usr/share/git-core/git-completion.bash ] \
    &&  . /Library/Developer/CommandLineTools/usr/share/git-core/git-completion.bash 

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}


export PATH=$PYENV_ROOT/bin:/usr/local/Cellar:$HOME/.poetry/bin:/opt/local/bin:/opt/local/sbin:$PATH
#export DEPLOY_TO=$(get_namespace)
export LC_COLLATE=C
export BASH_SILENCE_DEPRECATION_WARNING=1
export EDITOR=vim
export CLICOLOR=1

export GREP_OPTIONS='--color=auto --exclude=*.pyc --exclude-dir=.git'

export PAGER=/usr/local/bin/vimpager

# [Aliases]
alias ls='ls -lG'
alias pip=pip3
alias restart-nginx='nginx -s stop && nginx'
alias g='git'
alias dc='docker-compose'
eval $(thefuck --alias f)
alias sentry-cli='sentry-cli --api-key $SENTRY_API_KEY'
alias stern='stern --color=always'
alias ctags="`brew --prefix`/bin/ctags"
alias t="todo.sh"
alias current-branch="git symbolic-ref --short HEAD"
alias less=$PAGER
alias zless=$PAGER
alias dut="du -h $@ * .* | sort -rh | head-n 20"

function parent {
    (cd .. && $*)
}

function manage {
    service=$1
    shift
    docker-compose run "$service" python manage.py "$@"
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

function make_py_tags {
    find . -name '*.py' > cscope.files;
    cscope -Rb;
    ctags -R .;
}
function make_js_tags {
    find . -name '*.js' ! -path './node_modules/*' > cscope.files;
    cscope -Rb;
    ctags -R --exclude=node_modules --exclude=dist .;
}

function chrome {
    open -a "Google Chrome" "$1";
}
function jira {
    chrome "https://lantum.atlassian.net/browse/$1";
}
function febe {
    chrome "https://lantum.com/staff/febe/$1/?limit=20&id=$2";
}

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)";
fi
