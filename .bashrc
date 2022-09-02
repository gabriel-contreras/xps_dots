#
# ~/.bashrc
#

# Import the aliases
if [ -e $HOME/.bash_aliases ]; then
	source $HOME/.bash_aliases
fi

# Import the functions
if [ -e $HOME/.bash_functions ]; then
	source $HOME/.bash_functions
fi

# Customize the prompt
theme="hzd"

if [ $theme = "skyrim" ]; then
	PS1=' 🍮 \w\n◼️ '
elif [ $theme = "gow" ]; then
	PS1=' 𝝮 \w\n◼️ '
elif [ $theme = "hzd" ]; then
	PS1=' 🏹 \w\n◼️ '
elif [ $theme = "sw" ]; then
	PS1=' 🪐 \w\n◼️ '
elif [ $theme = "world" ]; then
	PS1=' 🌐 \w\n◼️ '
fi

# Added by NVM Installation
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
