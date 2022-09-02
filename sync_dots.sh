#!/bin/bash
# Updates dotfiles repository

dest=/home/gabriel/Projects/xps_dots/
dest_config=/home/gabriel/Projects/xps_dots/.config/

function R() {
    source=$1
    rsync -a $source $dest
}

function R_config() {
    source=$1
    rsync -a $source $dest_config
}

# Home Folder Files
R /home/gabriel/.bash_aliases
R /home/gabriel/.bash_functions
R /home/gabriel/.bash_profile
R /home/gabriel/.bashrc
R /home/gabriel/sync_dots.sh
R /home/gabriel/Themes

# Config Folder Files/Directories
R_config /home/gabriel/.config/qtile
R_config /home/gabriel/.config/pcmanfm
R_config /home/gabriel/.config/picom.conf
R_config /home/gabriel/.config/alacritty
R_config /home/gabriel/.config/nvim
R_config /home/gabriel/.config/neofetch
R_config /home/gabriel/.config/zathura
