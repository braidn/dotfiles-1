export PYTHONPATH
# Python
################################################################
[ -f "${HOME}/.pythonrc" ] && export PYTHONSTARTUP="${HOME}/.pythonrc"
[ -d "/usr/local/Cellar/python/2.7.2/Frameworks/Python.framework/Versions/2.7/lib/python2.7/site-packages/" ] && export PYTHONPATH="/usr/local/Cellar/python/2.7.2/Frameworks/Python.framework/Versions/2.7/lib/python2.7/site-packages/:${PYTHONPATH}"


#
# virtualenvwrapper
################################################################
export VIRTUALENVWRAPPER_PYTHON='/usr/local/Cellar/python/2.7.2/bin/python'
export WORKON_HOME=$HOME/.virtualenvs
[ -f /usr/local/bin/virtualenvwrapper.sh ]  && . /usr/local/bin/virtualenvwrapper.sh
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--distribute --python=/usr/local/Cellar/python/2.7.3/bin/python'
export PIP_RESPECT_VIRTUALENV=true
# disable PS1 append by the activate hook from virtualenvwrapper
# export VIRTUAL_ENV_DISABLE_PROMPT=' '
