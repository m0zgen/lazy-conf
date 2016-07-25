#!/bin/bash
# Add bash alias file for current user
# Created by Yevgeniy Goncharov, http://sys-adm.in

msgFound="Alias file already installed"
msgDone="Done!"

# Check alias in bashrc
ALIAS="if [ -f ~/.bash_aliases ]; then"

# If not exist, create alias file
touch ~/.bash_aliases

addLines() {
	cat >> ~/.bashrc <<EOF

# Add from lazy-conf script
if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi
EOF

	. ~/.bashrc
	echo $msgDone
}


# Check alias in bashrc
if grep -Fxq "$ALIAS" ~/.bashrc
then
    echo $msgFound
else
	addLines
fi

