# Homebrew
################################################################
export HOMEBREW_HOME="/usr/local"
export PATH="${HOMEBREW_HOME}/bin:${HOMEBREW_HOME}/sbin:$PATH"
# Homebrew's Python Scripts
[ -d "${HOMEBREW_HOME}/share/python" ] && PATH="${HOMEBREW_HOME}/share/python:$PATH"
