#!/bin/bash
mv ~/.vim ~/.vim_back
unlink ~/.vim
mv ~/.vimrc ~/.vimrc_back
unlink ~/.vimrc
ln -s ~/vim_server/.vim ~/
ln -s ~/vim_server/.vimrc ~/
rm .vim/bundle/Vundle.vim/ -rf
git clone https://github.com/gmarik/Vundle.vim.git .vim/bundle/Vundle.vim
vim +PluginInstall +qall
