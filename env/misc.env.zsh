#
# MISC
################################################################

export MACOSX_DEPLOYMENT_TARGET=10.7
export ARCHFLAGS="-arch i386 -arch x86_64"
export HISTIGNORE="${HISTIGNORE}:&:ls:[bf]g:exit:ls *:cd:cd -:pwd;exit:date:* --help"
export HISTCONTROL="${HISTCONTROL}:erasedups:ignoreboth"  # Erase duplicates
export HISTTIMEFORMAT="%h/%D - %H:%M:%S "
export HISTSIZE=15000 # resize history size

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
