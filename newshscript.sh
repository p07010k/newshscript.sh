#!/usr/bin/bash

if [[ $# -eq 0 ]]; then
	echo "Script name as argument"
	exit
else
	filename=$1
fi

# Create a file with shebang
shebang="#!$(which bash)"
echo -e "$shebang\n" > $filename

# Make it executable
chmod +x $filename

# Open it in vim
vim $filename
