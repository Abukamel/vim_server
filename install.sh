#!/bin/bash
mv ~/.vim ~/.vim_back
mv ~/.vimrc ~/.vimrc_back
ln -s .vim ~/
ln -s .vimrc ~/
rm .vim/bundle/Vundle.vim/ -rf
git clone https://github.com/gmarik/Vundle.vim.git .vim/bundle/Vundle.vim
vim +PluginInstall +qall
