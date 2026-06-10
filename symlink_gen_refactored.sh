#!/usr/bin/env bash
set -euxo pipefail

DOTFILE_ROOT="$HOME/dotfiles"

declare -a TARGET_ARRAY
TARGET_ARRAY=("$HOME/.bashrc" "$HOME/.config/starship.toml" "$HOME/.gitconfig")

for target_dir in "${TARGET_ARRAY[@]}"; do
    #if link already exists, do nothing for that target
    if [[ -L "$target_dir" ]]; then
        echo "Symlink for $target_dir already exists"
        continue
    fi

    parent_dir="$(dirname "$target_dir")"
    home_cut_dir="${target_dir#$HOME/}" #rest of absolute path after cutting off home directory - will be replaced by DOTFILE_ROOT

    mkdir -p "$parent_dir" #check if the parent directory of target even exists, if not, create it to prevent symlink errors
    rm -f "$target_dir" #if the original file exists, remove it. If not, ignore the error
    ln -s "$DOTFILE_ROOT/$home_cut_dir" "$target_dir" #create a link from the target directory pointing to the corresponding source in the dotfile directory (this is where mirroring ~ structure is useful)
    echo "Symlink for $target_dir created successfully."
done
    



