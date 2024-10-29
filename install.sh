#!/usr/bin/env sh

# Originally Stolen from Jess Archer https://github.com/jessarcher/dotfiles/blob/master/install, then modded by me

DOTFILES="$(pwd)"
DOTFILES_PRIVATE="$HOME/Repos/github.com/johanhanses/dotfiles-private"

# Brewfile
# ln -sf $DOTFILES/Brewfile $HOME/Brewfile
# cd $HOME && brew bundle

# Zsh
# ln -sf $DOTFILES/zshrc/mac/.zshrc $HOME/.zshrc
# ln -sf $DOTFILES/zshrc/linux/.zshrc $HOME/. zshrc
ln -sf $DOTFILES/zshrc/wsl/.zshrc $HOME/.zshrc

# Sublime Text
# ln -sf $DOTFILES/Preferences.sublime-settings $HOME/Library/Application\ Support/Sublime\ Text/Packages/User/Preferences.sublime-settings

# VS Code
# cd $DOTFILES/vscode && code --list-extensions > extensions.txt # use this to generate a list of extensions
# ln -sf $DOTFILES/vscode/keybindings.json $HOME/Library/Application\ Support/Code/User/keybindings.json
# ln -sf $DOTFILES/vscode/settings.json $HOME/Library/Application\ Support/Code/User/settings.json
# cd $DOTFILES/vscode && cat extensions.txt | xargs -L 1 code --install-extension

# Neovim
# rm -rf $HOME/.config/nvim
# ln -s $DOTFILES/nvim/ $HOME/.config/nvim

# Kitty
# rm -rf $HOME/.config/kitty
# ln -sf $DOTFILES/kitty/ $HOME/.config/kitty

# Tmux
rm -rf $HOME/.config/tmux
ln -sf $DOTFILES/tmux/ $HOME/.config/tmux

# Git
ln -sf $DOTFILES/.gitconfig $HOME/.gitconfig
ln -sf $DOTFILES/.gitignore_global $HOME/.gitignore_global

# Scripts
rm -rf $HOME/.config/scripts
ln -sf $DOTFILES/scripts/ $HOME/.config/scripts

# .kube
rm -rf $HOME/.kube
ln -sf $DOTFILES_PRIVATE/.kube/ $HOME/.kube

# promt managed by starship
# ln -sf $DOTFILES/starship.toml $HOME/.config/starship.toml
