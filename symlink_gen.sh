#!/usr/bin/env bash
set -euo pipefail

DOTFILE_ROOT="$HOME/dotfiles"

#deal with .bashrc
rm ~/.bashrc
ln -s "$DOTFILE_ROOT/.bashrc" ~/.bashrc
echo "Created symlink for .bashrc"

#deal with starship.toml
rm ~/.config/starship.toml
ln -s "$DOTFILE_ROOT/starship.toml" ~/.config/starship.toml
echo "Created symlink for starship.toml"

#deal with .gitconfig
rm ~/.gitconfig
ln -s "$DOTFILE_ROOT/.gitconfig" ~/.gitconfig
echo "Created symlink for .gitconfig"