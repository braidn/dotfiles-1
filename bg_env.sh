#!/usr/bin/env bash
# env.sh


# Pre-functions to help $PATH handling.

# Source: What is the most elegant way to remove a path from the $PATH variable in Bash?
# Link: http://stackoverflow.com/q/370047
path_append ()  { path_remove $1; PATH="$PATH:$1"; }
path_prepend () { path_remove $1; PATH="$1:$PATH"; }
path_remove ()  { PATH=`echo -n $PATH | awk -v RS=: -v ORS=: '$0 != "'$1'"' | sed 's/:$//'`; }

ifValidAppendToPath() { [ -d "$1" ] && path_append "$1" }
ifValidPrependToPath() { [ -d "$1" ] && path_prepend "$1" }

ifValidAppendToPath "/usr/bin"
ifValidAppendToPath "/usr/local/sbin"
ifValidAppendToPath "/usr/local/share/python"
ifValidAppendToPath "/opt/local/bin"
ifValidAppendToPath "/opt/local/sbin"
ifValidAppendToPath "/usr/local/git/bin"
ifValidAppendToPath "${HOME}/.local/bin"
ifValidAppendToPath "/usr/local/include"
ifValidAppendToPath "/Applications/Xcode.app/Contents/Developer/usr/bin"
ifValidAppendToPath "/Applications/Unity/MonoDevelop.app/Contents/MacOS"
ifValidAppendToPath "/Applications/Unity/MonoDevelop.app/Contents/Frameworks/Mono.framework/Commands/"
ifValidAppendToPath "$__BG_PLUGIN_PATH/bin"

# Homebrew
ifValidAppendToPath "${HOMEBREW_HOME}/bin"
ifValidAppendToPath "${HOMEBREW_HOME}/sbin"

# export PATH
export PATH

# Python
[ -f "${HOME}/.pythonrc" ] && export PYTHONSTARTUP="${HOME}/.pythonrc"

# virtualenvwrapper
# export VIRTUALENVWRAPPER_PYTHON=$(which python)
# export WORKON_HOME=$HOME/.virtualenvs
# [ -f /usr/local/bin/virtualenvwrapper.sh ]  && . /usr/local/bin/virtualenvwrapper.sh
# # [ -f /usr/local/share/python/virtualenvwrapper_lazy.sh ]  && source /usr/local/share/python/virtualenvwrapper_lazy.sh
# # export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--distribute --python=/usr/local/Cellar/python/2.7.3/bin/python'
# export PIP_RESPECT_VIRTUALENV=true

# # disable PS1 append by the activate hook from virtualenvwrapper
# export VIRTUAL_ENV_DISABLE_PROMPT=' '


# MISC
export ARCHFLAGS="-arch i386 -arch x86_64"
export HISTIGNORE="${HISTIGNORE}:&:ls:[bf]g:exit:ls *:cd:cd -:pwd;exit:date:* --help"
export HISTCONTROL="${HISTCONTROL}:erasedups:ignoreboth"  # Erase duplicates
export HISTTIMEFORMAT="%h/%D - %H:%M:%S "
export HISTSIZE=15000 # resize history size
export EDITOR="subl -w -n"
export GIT_EDITOR=$EDITOR

[ -d "/opt/local/share/man" ] && export MANPATH="/opt/local/share/man":$MANPATH


# Java Stuff
[ -d "/Library/Java/Home" ]                      && export JAVA_HOME="/Library/Java/Home"
[ -f "/Users/windu/.local/apache-ant-1.8.2" ]    && export ANT_HOME="/Users/windu/.local/apache-ant-1.8.2"

# Node JS
export NODE_PATH="/usr/local/lib/node"