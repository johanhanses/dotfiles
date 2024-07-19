#!/usr/bin/env sh

# Originally Stolen from Jess Archer https://github.com/jessarcher/dotfiles/blob/master/install, then modded by me

DOTFILES="$(pwd)"

# Zsh
ln -sf $DOTFILES/.zshrc $HOME/.zshrc

# Bash
ln -sf $DOTFILES/.bashrc $HOME/.bashrc

# Bash
ln -sf $DOTFILES/.bash_profile $HOME/.bash_profile

# Neovim
rm -rf $HOME/.config/nvim
ln -s $DOTFILES/nvim $HOME/.config/nvim

# Kitty
rm -rf $HOME/.config/kitty
ln -s $DOTFILES/kitty $HOME/.config/kitty

# Tmux
ln -sf $DOTFILES/tmux $HOME/.config/tmux

# Git
ln -sf $DOTFILES/.gitconfig $HOME/.gitconfig
ln -sf $DOTFILES/.gitignore_global $HOME/.gitignore_global

# Scripts
ln -sf $DOTFILES/scripts $HOME/.config/scripts

# # Oh My Zsh
# if [ ! -d "$HOME/.oh-my-zsh" ]; then
#   KEEP_ZSHRC=yes sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# fi
