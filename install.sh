#!/usr/bin/env bash
# install.sh
# Author: Bruno Gama

PYTHON2="2.7.3"
PYTHON3k="3.3.0"

echo "Installing oh-my-zsh"
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

echo "Installing Homebrew"
ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"
echo "Running Homebrew default system packages"
sh brew.sh

echo "Installing Pythonbrew"
curl -kL http://xrl.us/pythonbrewinstall | bash
echo "Installing Python ${PYTHON2} and ${PYTHON3k}"
pythonbrew install $PYTHON2 $PYTHON3k
echo "Switching to Python ${PYTHON2} as default Interpreter"
python switch 2.7.3
echo "Installing Packages"
easy_install pip
pip install yolk

echo "Installing gems"
gem cupertino liftoff

echo "Setting up OSX settings"
sh osx
mkdir -p ~/.local/bin
ln -s "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl" ~/.local/bin/subl
ln -s .gitconfig ~/.gitconfig
ln -s .global_ignore ~/.global_ignore
ln -s .zshrc ~/.zshrc
ln -s slate.js ~/.slate.js
ln -s .pythonrc ~/.pythonrc