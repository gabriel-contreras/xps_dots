# Script that changes laptop to the God of War theme

# Qtile
sed -i "s/colorschemes\..*/colorschemes\.gow import */" $HOME/.config/qtile/bars.py
sed -i "s/theme = \".*\"/theme = \"gow\"/" $HOME/.config/qtile/bars.py

# Alacritty
sed -i "s/colorschemes\/[^\.]*/colorschemes\/gow/" $HOME/.config/alacritty/alacritty.yml

# Bash Prompt
sed -i "s/theme=\".*\"/theme=\"gow\"/" $HOME/.bashrc

# Neovim
sed -i "s/colorscheme .*/colorscheme pink-moon/" $HOME/.config/nvim/init.vim
sed -i "s/_theme = '.*'/_theme = 'angr'/" $HOME/.config/nvim/init.vim

# VS Code
sed -i "s/colorTheme\": \".*\"/colorTheme\": \"Horizon\"/" $HOME/.config/Code\ -\ OSS/User/settings.json

# Neofetch
sed -i "s/image_source=\"\$HOME\/\.config\/neofetch\/[^_]*/image_source=\"\$HOME\/\.config\/neofetch\/gow/" $HOME/.config/neofetch/config.conf

# Apply the changes
qtile cmd-obj -o cmd -f restart