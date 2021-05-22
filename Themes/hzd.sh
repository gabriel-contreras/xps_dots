# Script that changes laptop to the Horizon Zero Dawn theme

# Qtile
sed -i "s/colorschemes\..*/colorschemes\.hzd import */" $HOME/.config/qtile/bars.py
sed -i "s/theme = \".*\"/theme = \"hzd\"/" $HOME/.config/qtile/bars.py

# Alacritty
sed -i "s/colorschemes\/[^\.]*/colorschemes\/hzd/" $HOME/.config/alacritty/alacritty.yml

# Bash Prompt
sed -i "s/theme=\".*\"/theme=\"hzd\"/" $HOME/.bashrc

# Neovim
sed -i "s/colorscheme .*/colorscheme deus/" $HOME/.config/nvim/init.vim
sed -i "s/_theme = '.*'/_theme = 'murmur'/" $HOME/.config/nvim/init.vim

# VS Code
sed -i "s/colorTheme\": \".*\"/colorTheme\": \"Ayu Mirage\"/" $HOME/.config/Code\ -\ OSS/User/settings.json

# Neofetch
sed -i "s/image_source=\"\$HOME\/\.config\/neofetch\/[^_]*/image_source=\"\$HOME\/\.config\/neofetch\/hzd/" $HOME/.config/neofetch/config.conf

# Apply the changes
qtile cmd-obj -o cmd -f restart