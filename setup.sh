#!/bin/bash

cp ~/.bashrc ~/.bashrc_backup
cp ~/.vimrc ~/.vimrc_backup

rm ~/.bashrc
rm ~/.vimrc

ln -s ~/dotfiles/.bashrc ~/.bashrc
ln -s ~/dotfiles/.vimrc ~/.vimrc

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim +PluginInstall +qall
