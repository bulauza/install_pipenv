sudo apt update
sudo apt install python3-pip

pip3 install pipenv --user
source ~/.profile

## .profileでpathを通すなら下記を記述

## set PATH so it includes user's private bin if it exists
#if [ -d "$HOME/.local/bin" ] ; then
#    PATH="$HOME/.local/bin:$PATH"
#fi
