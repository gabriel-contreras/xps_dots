# Script that changes laptop to the Skyrim theme

# Qtile
sed -i "s/colorschemes\..*/colorschemes\.skyrim import */" $HOME/.config/qtile/bars.py
sed -i "s/theme = \".*\"/theme = \"skyrim\"/" $HOME/.config/qtile/bars.py

# Alacritty
sed -i "s/colorschemes\/[^\.]*/colorschemes\/skyrim/" $HOME/.config/alacritty/alacritty.yml

# Bash Prompt
sed -i "s/theme=\".*\"/theme=\"skyrim\"/" $HOME/.bashrc

# Neovim
sed -i "s/colorscheme .*/colorscheme afterglow/" $HOME/.config/nvim/init.vim
sed -i "s/_theme = '.*'/_theme = 'zenburn'/" $HOME/.config/nvim/init.vim

# VS Code
sed -i "s/colorTheme\": \".*\"/colorTheme\": \"Ayu Dark\"/" $HOME/.config/Code/User/settings.json

# Neofetch
sed -i "s/image_source=\"\$HOME\/\.config\/neofetch\/[^_]*/image_source=\"\$HOME\/\.config\/neofetch\/skyrim/" $HOME/.config/neofetch/config.conf

# Apply the changes
qtile cmd-obj -o cmd -f restart
