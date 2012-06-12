#!/bin/bash

export MACOSX_DEPLOYMENT_TARGET=10.7
export ARCHFLAGS="-arch i386 -arch x86_64"
export HISTIGNORE="${HISTIGNORE}:&:ls:[bf]g:exit:ls *:cd:cd -:pwd;exit:date:* --help"
export HISTCONTROL="${HISTCONTROL}:erasedups:ignoreboth"  # Erase duplicates
export HISTTIMEFORMAT="%h/%D - %H:%M:%S "
export HISTSIZE=15000 # resize history size

# Python
########
[ -f "${HOME}/.pythonrc" ]                                                                                      && export PYTHONSTARTUP="${HOME}/.pythonrc"
[ -d "/usr/local/Cellar/python/2.7.2/Frameworks/Python.framework/Versions/2.7/lib/python2.7/site-packages/" ]   && export PYTHONPATH="/usr/local/Cellar/python/2.7.2/Frameworks/Python.framework/Versions/2.7/lib/python2.7/site-packages/:${PYTHONPATH}"


# PATH
######
[ -d "/usr/local/bin" ]                     && PATH="/usr/local/bin":${PATH}
[ -d "/usr/local/share/python" ]            && PATH="/usr/local/share/python":${PATH}
[ -d "/opt/local/bin" ]                     && PATH="/opt/local/bin":${PATH}
[ -d "/opt/local/sbin" ]                    && PATH="/opt/local/sbin":${PATH}
[ -d "/usr/local/git" ]                     && PATH="/usr/local/git/bin:${PATH}"
[ -d "${HOME}/.local/bin" ]                 && PATH="${HOME}/.local/bin:${PATH}"
[ -d "/usr/local/include" ]                 && PATH="/usr/local/include":${PATH}

# Homebrew
##########
export HOMEBREW_HOME="/usr/local"
PATH="${HOMEBREW_HOME}/bin:${HOMEBREW_HOME}/sbin:$PATH"

# Homebrew's Python Scripts
[ -d "${HOMEBREW_HOME}/share/python" ]      && PATH="${HOMEBREW_HOME}/share/python:$PATH"



[ -d "/opt/local/share/man" ]               && export MANPATH="/opt/local/share/man":$MANPATH
[ -d "/Library/Java/Home" ]                 && export JAVA_HOME="/Library/Java/Home"

# virtualenvwrapper
###################
export WORKON_HOME=$HOME/.virtualenvs
[ -f /usr/local/bin/virtualenvwrapper.sh ]  && . /usr/local/bin/virtualenvwrapper.sh 2>/dev/null
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--distribute --python=/usr/local/Cellar/python/2.7.2/bin/python'

# disable PS1 append by the activate hook from virtualenvwrapper
export VIRTUAL_ENV_DISABLE_PROMPT=' '

export ANT_HOME="/Users/windu/.local/apache-ant-1.8.2"
export PIP_RESPECT_VIRTUALENV=true
export PATH
# Node JS
export NODE_PATH="/usr/local/lib/node"
