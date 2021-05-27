# Script that changes laptop to the World theme

# Qtile
sed -i "s/colorschemes\..*/colorschemes\.world import */" $HOME/.config/qtile/bars.py
sed -i "s/theme = \".*\"/theme = \"world\"/" $HOME/.config/qtile/bars.py

# Alacritty
sed -i "s/colorschemes\/[^\.]*/colorschemes\/world/" $HOME/.config/alacritty/alacritty.yml

# Bash Prompt
sed -i "s/theme=\".*\"/theme=\"world\"/" $HOME/.bashrc

# Neovim
sed -i "s/colorscheme .*/colorscheme archery/" $HOME/.config/nvim/init.vim
sed -i "s/_theme = '.*'/_theme = 'archery'/" $HOME/.config/nvim/init.vim

# VS Code
sed -i "s/colorTheme\": \".*\"/colorTheme\": \"Abyss\"/" $HOME/.config/Code\ -\ OSS/User/settings.json

# Neofetch
sed -i "s/image_source=\"\$HOME\/\.config\/neofetch\/[^_]*/image_source=\"\$HOME\/\.config\/neofetch\/world/" $HOME/.config/neofetch/config.conf

# Apply the changes
qtile cmd-obj -o cmd -f restart
