#!/usr/bin/env bash
set -euo pipefail

DOTFILE_ROOT="$HOME/dotfiles"

declare -a TARGET_ARRAY
TARGET_ARRAY=("$HOME/.bashrc" "$HOME/.config/starship.toml" "$HOME/.gitconfig" "$HOME/.tmux.conf")

for target_path in "${TARGET_ARRAY[@]}"; do
    #process the path to get the parent path and also the full path without the $HOME root
    parent_path="$(dirname "$target_path")"
    home_cut_path="${target_path#$HOME/}" #rest of absolute path after cutting off home directory - will be replaced by DOTFILE_ROOT
    #if link already exists AND the link points to correct file, do nothing for that target and move to the next one
    if [[ -L "$target_path" ]] && [[ "$(readlink "$target_path")" == "$DOTFILE_ROOT/$home_cut_path" ]]; then
        echo "Working symlink for $target_path already exists"
        continue
    fi
    #if either the link does not exist OR the link exists but is broken, we need to remove and make a correct one
    mkdir -p "$parent_path" #check if the parent directory of target even exists, if not, create it to prevent symlink errors
    rm -f "$target_path" #if the original file exists, remove it. If not, ignore the error (Also removes broken symlinks)
    #check if the source file even exists in the directory. If so, then only create symlink, otherwise remind them and move to the next.
    if [[ -f "$DOTFILE_ROOT/$home_cut_path" ]]; then
        ln -s "$DOTFILE_ROOT/$home_cut_path" "$target_path"
        echo "Symlink for $target_path created successfully."
    else
        echo "The actual file does not exist in the dotfile repository. Add $DOTFILE_ROOT/$home_cut_path before running"
        continue
    fi    
done
    



