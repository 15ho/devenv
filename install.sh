#!/bin/bash

echo 'Initing'
sudo apt update -y
if [ ! -f '/usr/bin/zsh' ];then
    sudo apt install zsh -y
fi
exec /usr/bin/zsh

if [ ! -d "${HOME}/.zprezto" ];then
    echo 'Configure zsh by prezto'
    git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
    setopt EXTENDED_GLOB
    for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
    ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
    done
    chsh -s /bin/zsh
fi


