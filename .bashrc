#-------------------
## Enviroment
##-------------------

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR=/usr/bin/vim

export PYTHONPATH=~/Projects/:~/uitests/stb-tester:~/uitests/library:$PYTHONPATH
export PATH=$PATH:~/bin/:~/uitests/tools:~/.local/bin

export HISTSIZE=1000000000
export HISTTIMEFORMAT="%Y/%m/%d %H:%M:%S  " # Add a timestamp to each history entry.
export HISTIGNORE=?:??  # Don't remember trivial 1- and 2-letter commands.
export HISTCONTROL=ignoredups

export GIT_PS1_SHOWDIRTYSTATE=1

if [[ -f /usr/share/git/completion/git-prompt.sh ]]; then
    source /usr/share/git/completion/git-prompt.sh
    export PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
else
    export PS1="[\u@\h \W]\\$ "
fi

# Command completion
source /usr/share/bash-completion/bash_completion
# Enable shell glob pattern "**" to match multiple subdirectories
shopt -s globstar

# Append to ~/.bash_history instead of overwriting it -- this stops terminals
# from overwriting one another's histories.
shopt -s histappend

##-------------------
## Aliases
##-------------------

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p'

##-------------------
## Platform specific things
##-------------------
if [[ "$OSTYPE" == "linux-gnu" ]]; then
    # Various Linux flavours.
    alias ls='ls -h --color'
elif [[ "$OSTYPE" == "darwin"* ]]; then
    # Mac OS X.
    alias ls='ls -h -G'
elif [[ "$OSTYPE" == "cygwin" ]]; then
    # Cygwin and git bash for Windows.
    alias ls='ls -h --color'
fi
