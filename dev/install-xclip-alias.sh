#!/bin/bash
# Install xclip and add alias for copy from terminal
# Created by Yevgeniy Goncharov, http://sys-adm.in

# ---------------------------------------------------------- VARIABLES #
# Env and paths
PATH=$PATH:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin
SCRIPT_PATH=$(cd `dirname "${BASH_SOURCE[0]}"` && pwd)

# Check and create bash aliases file
$SCRIPT_PATH/install-bash-aliases.sh

# Xclip alias line
addLines() {
	cat >> ~/.bash_aliases <<EOF

# Add from lazy-conf script
alias xc='xclip -selection clipboard'
alias xp='xclip -selection clpboard -o'
alias xps='xclip -selection primary -o'
EOF

	echo "Done!"
	echo "Usage - ls ~/.bash_aliases | xc"
}

# Check alias exist
if [[ ! -z $(grep "xclip" "$HOME/.bash_aliases") ]]; then echo "Xclip found in your alias file!"; else addLines; fi