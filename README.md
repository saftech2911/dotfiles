# Safwan's dotfiles
My customizations for all my Linux shells and lifesaving tools. Started after one month of migrating to Linux from Windows after using the latter for ~20 years, so will take time to be meaningful. Please exercise patience. Currently limited to bash, starship, and git configurations.

Dotfile folder path in my Unix systems: `~/dotfiles`

My **explicit, manual** modifications for each file ***only*** are listed under the file headers.

# Bash Customizations
Dotfiles necessary for bash only:
| File name | Path in the repo (SOURCE) | Default Path (TARGET) |
|:-----------:|:---------------------------:|:-----------------------:|
|`.bashrc`  | `./.bashrc`                   |`~/.bashrc`|

## `.bashrc`
**Last modified:** ***June 10, 2025***

1. Aliases added:

| Alias | Actual command | 
|:-----------:|:---------------------------:|
|`dc`  | `cd`                   |
|`nv`|`nvim`|

2. Additions to `$PATH`:
    - `pyenv` directory to the front

3. `eval` for running programs at start of each shell session
    - `pyenv` - python version manager
    - `starship` - runs every prompt for prompt customization
    - `fzf` - fuzzy finder for Reverse-i-search and others (This changes the `Ctrl + R` behavior)

