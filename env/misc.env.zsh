#
# gcc on lion
################################################################
# export CC=/usr/bin/gcc

#
# MISC
################################################################

export MACOSX_DEPLOYMENT_TARGET=10.7
export ARCHFLAGS="-arch i386 -arch x86_64"
export HISTIGNORE="${HISTIGNORE}:&:ls:[bf]g:exit:ls *:cd:cd -:pwd;exit:date:* --help"
export HISTCONTROL="${HISTCONTROL}:erasedups:ignoreboth"  # Erase duplicates
export HISTTIMEFORMAT="%h/%D - %H:%M:%S "
export HISTSIZE=15000 # resize history size
export EDITOR="subl -n"
export GIT_EDITOR=$EDITOR

# export CC=clang
# export CXX=clang
# export FFLAGS=-ff2c
# export LDFLAGS="-arch x86_64 -Wall -undefined dynamic_lookup -bundle"
# export FFLAGS="-arch x86_64"

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

#
# Ruby shit
#
# gempath:
# - /Users/windu/.gems
# - /Library/Ruby/Gems/1.8
# - /System/Library/Frameworks/Ruby.framework/Versions/1.8/usr/lib/ruby/gems/1.8


# export GEM_PATH='/Users/windu/.gem:/Library/Ruby/Gems/1.8:/System/Library/Frameworks/Ruby.framework/Versions/1.8/usr/lib/ruby/gems/1.8'
# export GEM_HOME='/Users/windu/.gem'



[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # This loads RVM into a shell session.
