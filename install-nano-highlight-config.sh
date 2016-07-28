#!/bin/bash
#
# Script for install highlight config for nano
# Created by Yevgeniy Goncharov, http://sys-adm.in

touch ~/conf.nanorc

cat > ~/conf.nanorc <<EOF
# config file highlighting

syntax "conf" "(\.(local|conf|config|cfg|cnf|rc|lst|list|defs|ini|desktop|mime|types|preset|cache|seat|service|htaccess)$|(^|/)(\w*crontab|mirrorlist|group|hosts|passwd|rpc|netconfig|shadow|fstab|inittab|inputrc|protocols|sudoers)$|conf.d/|.config/)"

# default text
color magenta "^.*$"
# special values
icolor brightblue "(^|\s|=)(default|true|false|on|off|yes|no)(\s|$)"
# keys
icolor cyan "^\s*(set\s+)?[A-Z0-9_\/\.\%\@+-]+\s*([:]|\>)"
# commands
color blue "^\s*set\s+\<"
# punctuation
color blue "[.]"
# numbers
color red "(^|\s|[[/:|<>(){}=,]|\])[-+]?[0-9](\.?[0-9])*%?($|\>)"
# keys
icolor cyan "^\s*(\$if )?([A-Z0-9_\/\.\%\@+-]|\s)+="
# punctuation
color blue "/"
color brightwhite "(\]|[()<>[{},;:=])"
color brightwhite "(^|\[|\{|\:)\s*-(\s|$)"
# section headings
icolor brightyellow "^\s*(\[([A-Z0-9_\.-]|\s)+\])+\s*$"
color brightcyan "^\s*((Sub)?Section\s*(=|\>)|End(Sub)?Section\s*$)"
color brightcyan "^\s*\$(end)?if(\s|$)"
# URLs
icolor green "\b(([A-Z]+://|www[.])[A-Z0-9/:#?&$=_\.\-]+)(\b|$| )"
# XML-like tags
icolor brightcyan "</?\w+((\s*\w+\s*=)?\s*("[^"]*"|'[^']*'|!?[A-Z0-9_:/]))*(\s*/)?>"
# strings
color yellow "\"(\\.|[^"])*\"" "'(\\.|[^'])*'"
# comments
color white "#.*$"
color blue "^\s*##.*$"
color white "^;.*$"
color white start="<!--" end="-->"
EOF

# cat ~/conf.nanorc
echo "include ~/conf.nanorc" >> ~/.nanorc

echo "Done! Conf file located - ~/conf.nanorc"