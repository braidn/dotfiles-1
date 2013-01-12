#!/usr/bin/env zsh

# PATH
################################################################
[ -d "/usr/bin" ]                   && PATH="/usr/bin":${PATH}
[ -d "/usr/local/sbin" ]            && PATH="/usr/local/sbin":${PATH}
[ -d "/usr/local/sbin" ]            && PATH="/usr/local/sbin":${PATH}
[ -d "/usr/local/share/python" ]    && PATH="/usr/local/share/python":${PATH}
[ -d "/opt/local/bin" ]             && PATH="/opt/local/bin":${PATH}
[ -d "/opt/local/sbin" ]            && PATH="/opt/local/sbin":${PATH}
[ -d "/usr/local/git" ]             && PATH="/usr/local/git/bin:${PATH}"
[ -d "${HOME}/.local/bin" ]         && PATH="${HOME}/.local/bin:${PATH}"
[ -d "/usr/local/include" ]         && PATH="/usr/local/include":${PATH}
[ -d "/Applications/Xcode.app/Contents/Developer/usr/bin" ] && PATH="/Applications/Xcode.app/Contents/Developer/usr/bin":${PATH}
[ -d "/Applications/Unity/MonoDevelop.app/Contents/MacOS" ] && PATH="/Applications/Unity/MonoDevelop.app/Contents/MacOS":${PATH}
[ -d "/Applications/Unity/MonoDevelop.app/Contents/Frameworks/Mono.framework/Commands/" ] && PATH="/Applications/Unity/MonoDevelop.app/Contents/Frameworks/Mono.framework/Commands/":${PATH}

[ -d "$__BRNGP_PLUGIN_PATH/bin" ]  && PATH="$__BRNGP_PLUGIN_PATH/bin":${PATH}

export PATH



# Homebrew
################################################################
export PATH="${HOMEBREW_HOME}/bin:${HOMEBREW_HOME}/sbin:$PATH"
# Homebrew's Python Scripts
[ -d "${HOMEBREW_HOME}/share/python" ] && PATH="${HOMEBREW_HOME}/share/python:$PATH"




export PYTHONPATH
# Python
################################################################
[ -f "${HOME}/.pythonrc" ] && export PYTHONSTARTUP="${HOME}/.pythonrc"
[ -d "/usr/local/lib/python2.7/site-packages" ] && export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH


#
# virtualenvwrapper
################################################################
export VIRTUALENVWRAPPER_PYTHON=$(which python)
export WORKON_HOME=$HOME/.virtualenvs
[ -f /usr/local/bin/virtualenvwrapper.sh ]  && . /usr/local/bin/virtualenvwrapper.sh
# [ -f /usr/local/share/python/virtualenvwrapper_lazy.sh ]  && source /usr/local/share/python/virtualenvwrapper_lazy.sh
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--distribute --python=/usr/local/Cellar/python/2.7.3/bin/python'
export PIP_RESPECT_VIRTUALENV=true

# disable PS1 append by the activate hook from virtualenvwrapper
export VIRTUAL_ENV_DISABLE_PROMPT=' '




#
# MISC
################################################################


export ARCHFLAGS="-arch i386 -arch x86_64"
export HISTIGNORE="${HISTIGNORE}:&:ls:[bf]g:exit:ls *:cd:cd -:pwd;exit:date:* --help"
export HISTCONTROL="${HISTCONTROL}:erasedups:ignoreboth"  # Erase duplicates
export HISTTIMEFORMAT="%h/%D - %H:%M:%S "
export HISTSIZE=15000 # resize history size
export EDITOR="subl -n"
export GIT_EDITOR=$EDITOR

[ -d "/opt/local/share/man" ] && export MANPATH="/opt/local/share/man":$MANPATH


#
# Java Stuff
################################################################
[ -d "/Library/Java/Home" ]                     && export JAVA_HOME="/Library/Java/Home"
[ -f "/Users/windu/.local/apache-ant-1.8.2" ]    && export ANT_HOME="/Users/windu/.local/apache-ant-1.8.2"


#
# Node JS
################################################################
export NODE_PATH="/usr/local/lib/node"


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # This loads RVM into a shell session.


#
# Autojump
################################################################
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh
