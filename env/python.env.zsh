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
# [ -f /usr/local/bin/virtualenvwrapper.sh ]  && . /usr/local/bin/virtualenvwrapper.sh
[ -f /usr/local/share/python/virtualenvwrapper.sh ]  && source /usr/local/share/python/virtualenvwrapper.sh
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--distribute --python=/usr/local/Cellar/python/2.7.3/bin/python'
export PIP_RESPECT_VIRTUALENV=true

# disable PS1 append by the activate hook from virtualenvwrapper
export VIRTUAL_ENV_DISABLE_PROMPT=' '
