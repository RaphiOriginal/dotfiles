#! /bin/bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install fish

brew install vim --with-lua

brew link vim

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -s .vimrc ~
ln -s config.fish ~/.config/fish
ln -s .gitconfig ~
