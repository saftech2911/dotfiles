# Safwan's dotfiles
My customizations for all my Linux shells and lifesaving tools. Started after one month of migrating to Linux from Windows after using the latter for ~20 years, so will take time to be meaningful. Please exercise patience. Currently limited to bash, starship, and git configurations.

Dotfile folder path in my Unix systems according to convention: `~/dotfiles`

My **explicit, manual** modifications for each file ***only*** are listed under the file headers.

# Setup details
## Instructions

To make this work, follow the steps **in order** since we need the `dotfiles` directory before removing and creating appropriate symlinks.
1. Clone this repository: `git clone https://github.com/saftech2911/dotfiles.git` **at your home directory `~`**.
2. Enter the `dotfiles` directory.
3. Check if `symlink_gen.sh` is executable using `ls -l symlink_gen.sh`. If not, use `chmod u+x symlink_gen.sh` to make it executable
4. Run the script using `./symlink_gen.sh`. This will\
    a. Remove the existing config files at default directories. (Currently supported directories are listed below).
    b. Create symlinks at the original config file paths leading to the corresponding paths in the `~/dotfiles` directory so that programs can find your dotfiles correctly. 
    
> [!CAUTION]
> **THIS REMOVES YOUR CONFIG FILES PERMANENTLY!** If you want to use your own configs, copy them into the dotfiles folder first correctly and modify the script if you add config files not in here now. **Let me know in `Issues` if you think others can benefit from it.**

    

## The script `symlink_gen.sh`
**Last modified:** ***June 10, 2026***

It removes and creates symlinks for the following default config file paths for now:
1. `~/.bashrc`
2. `~/.config/starship.toml`
3. `~/.gitconfig`

# Bash
Dotfiles necessary for bash only:
| File name | Path in the repo (SOURCE) | Default Path (TARGET) |
|:-----------:|:---------------------------:|:-----------------------:|
|`.bashrc`  | `./.bashrc`                   |`~/.bashrc`|

## `.bashrc`
**Last modified:** ***June 10, 2026***

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
|`starship.toml`  | `./.config/starship.toml`                   |`~/.config/starship.toml`|

## `starship.toml`
**Last modified:** ***June 10, 2026***
- Preset currently in use: `gruvbox-rainbow`
- Changed time format from `%R` (24 hr) to traditional `%I:%M %p` (12 hr with AM/PM)
- newline in prompt removed

> [!WARNING]
> Starship requires a Nerd Font. Before using Starship, **please install a Nerd Font from [this link](https://www.nerdfonts.com/font-downloads)**. I personally prefer the `JetBrainsMono Nerd Font` family.

# Git - VCS
Dotfiles necessary for git:
| File name | Path in the repo (SOURCE) | Default Path (TARGET) |
|:-----------:|:---------------------------:|:-----------------------:|
|`.gitconfig`  | `./.gitconfig`                   |`~/.gitconfig`|

## `.gitconfig`
**Last modified:** ***June 10, 2026***
- I did not change much. Only name and email added for `user`.


