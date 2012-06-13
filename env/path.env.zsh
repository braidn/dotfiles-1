#!/bin/zsh

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
[ -d "$__BRNGP_PLUGIN_PATH/bin/" ]  && PATH="$__BRNGP_PLUGIN_PATH/bin/":${PATH}


export PATH
