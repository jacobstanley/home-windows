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

# git support
if [ -z "$GIT_INSTALL" ]; then
  GIT_INSTALL="/c/Program Files (x86)/Git"
fi
function git() {
    PATH=$GIT_INSTALL/bin:$GIT_INSTALL/mingw/bin:$PATH git.exe $@ ;
}
. "$GIT_INSTALL/etc/git-completion.bash"

# tell mingw about /usr/local as it doesn't
# use it on windows by default
export PATH=$PATH:/usr/local/bin
export CPLUS_INCLUDE_PATH=/usr/local/include
export LIBRARY_PATH=/usr/local/lib

# start in dev area
cd /c/development
