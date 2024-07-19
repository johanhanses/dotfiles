#!/usr/bin/env sh

# Originally Stolen from Jess Archer https://github.com/jessarcher/dotfiles/blob/master/install, then modded by me

DOTFILES="$(pwd)"

# Zsh
ln -sf $DOTFILES/.zshrc $HOME/.zshrc

# Brewfile
ln -sf $DOTFILES/Brewfile $HOME/Brewfile

# Sublime Text
ln -sf $DOTFILES/Preferences.sublime-settings $HOME/Library/Application\ Support/Sublime\ Text/Packages/User/Preferences.sublime-settings

# Neovim
rm -rf $HOME/.config/nvim
ln -s $DOTFILES/nvim/ $HOME/.config/nvim

# Kitty
rm -rf $HOME/.config/kitty
ln -sf $DOTFILES/kitty/ $HOME/.config/kitty

# Tmux
rm -rf $HOME/.config/tmux
ln -sf $DOTFILES/tmux/ $HOME/.config/tmux

# Git
ln -sf $DOTFILES/.gitconfig $HOME/.gitconfig
ln -sf $DOTFILES/.gitignore_global $HOME/.gitignore_global

# Scripts
rm -rf $HOME/.config/scripts
ln -sf $DOTFILES/scripts/ $HOME/.config/scripts
