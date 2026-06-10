# Safwan's dotfiles
My customizations for all my Linux shells and lifesaving tools. Started after one month of migrating to Linux from Windows after using the latter for ~20 years, so will take time to be meaningful. Please exercise patience. Currently limited to bash, starship, and git configurations.

Dotfile folder path in my Unix systems: `~/dotfiles`

My **explicit, manual** modifications for each file ***only*** are listed under the file headers.

# Bash
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

# Starship - prompt customizer
Dotfiles necessary for starship:
| File name | Path in the repo (SOURCE) | Default Path (TARGET) |
|:-----------:|:---------------------------:|:-----------------------:|
|`starship.toml`  | `./starship.toml`                   |`~/.config/starship.toml`|

## `starship.toml`
**Last modified:** ***June 10, 2025***
- Preset currently in use: `gruvbox-rainbow`
- Changed time format from `%R` (24 hr) to traditional `%I:%M %p` (12 hr with AM/PM)
- newline in prompt removed

# Git - VCS
Dotfiles necessary for git:
| File name | Path in the repo (SOURCE) | Default Path (TARGET) |
|:-----------:|:---------------------------:|:-----------------------:|
|`.gitconfig`  | `./.gitconfig`                   |`~/.gitconfig`|

## `.gitconfig`
**Last modified:** ***June 10, 2025***
- I did not change much. Only name and email added for `user`.


