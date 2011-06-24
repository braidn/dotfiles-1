#!/bin/bash

export MACOSX_DEPLOYMENT_TARGET=10.6
export ARCHFLAGS="-arch i386 -arch x86_64"
export PYTHONPATH
export LC_CTYPE="pt_BR.UTF-8"
export GREP_OPTIONS="--exclude=\*.svn\*"
export LANG="en_US.UTF-8"
# export LC_CTYPE="en_US.UTF-8"
export EDITOR='mate -w'  # OS-X SPECIFIC - TextMate, w is to wait for TextMate window to close
export HISTCONTROL=erasedups # Erase duplicates
export HISTSIZE=15000 # resize history size

export PYTHONSTARTUP="${HOME}/.pythonrc"

# PATH
[ -d "/opt/local/bin" ] 									&& PATH="/opt/local/bin":${PATH}
[ -d "/opt/local/sbin" ] 									&& PATH="/opt/local/sbin":${PATH}
[ -d "/usr/local/bin/gitx" ] 								&& PATH="/usr/local/bin/gitx":${PATH}
[ -d "/Library/Frameworks/Python.framework/Versions/2.7" ] 	&& PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}" #set Python 2.7
[ -d "${HOME}/Projects/Python/xml2json" ] 					&& PATH="${HOME}/Projects/Python/xml2json:${PATH}"
[ -d "/usr/local/git" ] 									&& PATH="/usr/local/git/bin:${PATH}"
[ -d "${HOME}/bin" ] 										&& PATH="${HOME}/bin:${PATH}"
[ -d "/usr/local/include" ] 								&& PATH="/usr/local/include":${PATH}
[ -d "/Library/Frameworks/Python.framework/Versions/2.7" ] 	&& PYTHONPATH="/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/site-packages/:${PYTHONPATH}"
[ -d "/Library/Java/Home" ] 								&& export JAVA_HOME="/Library/Java/Home"
[ -d "/opt/local/share/man" ] && export MANPATH="/opt/local/share/man":$MANPATH

export PATH