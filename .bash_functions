# Holds all of the functions for the bash shell

# List contents of directories when changing
function cl() {
	DIR="$*";
		if [ $# -lt 1 ]; then
			DIR=$HOME;
	fi;
	builtin cd "${DIR}" && \
		ls
}