# Script that changes laptop to the Star Wars theme

# Qtile
sed -i "s/colorschemes\..*/colorschemes\.sw import */" $HOME/.config/qtile/bars.py
sed -i "s/theme = \".*\"/theme = \"sw\"/" $HOME/.config/qtile/bars.py

# Alacritty
sed -i "s/colorschemes\/[^\.]*/colorschemes\/sw/" $HOME/.config/alacritty/alacritty.yml

# Bash Prompt
sed -i "s/theme=\".*\"/theme=\"sw\"/" $HOME/.bashrc

# Neovim
sed -i "s/colorscheme .*/colorscheme dogrun/" $HOME/.config/nvim/init.vim
sed -i "s/_theme = '.*'/_theme = 'violet'/" $HOME/.config/nvim/init.vim

# VS Code
sed -i "s/colorTheme\": \".*\"/colorTheme\": \"SynthWave '84\"/" $HOME/.config/Code\ -\ OSS/User/settings.json

# Neofetch
sed -i "s/image_source=\"\$HOME\/\.config\/neofetch\/[^_]*/image_source=\"\$HOME\/\.config\/neofetch\/sw/" $HOME/.config/neofetch/config.conf

# Apply the changes
qtile cmd-obj -o cmd -f restart
