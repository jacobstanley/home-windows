# configure prompt
export PS1='\[\033]0;\w\007\033[32m\]\u@\h \[\033[33m\w\033[0m\]
$ '

# save history every time we show the prompt
shopt -s histappend
export PROMPT_COMMAND='history -a'

# some useful aliases
alias ls="ls --color"
alias ll="ls -lGh"
alias grep="grep --color=always"

# put bash in vi mode
set -o vi

# set default options for 'less'
export LESS=-FRSX

# set default protocol for 'plink'
export PLINK_PROTOCOL=ssh

# tell mingw about /usr/local as it doesn't
# use it on windows by default
export PATH=$HOME/bin:$PATH:/usr/local/bin
export CPATH=/usr/local/include
export LIBRARY_PATH=/usr/local/lib

# git completion support
if [ -z "$GIT_INSTALL" ]; then
    export GIT_INSTALL="/c/Program Files (x86)/Git"
fi
. "$GIT_INSTALL/etc/git-completion.bash"

# start in dev area
cd /c/development
