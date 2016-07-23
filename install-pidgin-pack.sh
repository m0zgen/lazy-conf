#!/bin/bash
# Install spell support, telegram and skype support for pidgin
# Created by Yevgeniy Goncharov, http://sys-adm.in
#

# Check if pidgin installed
if [[ $(rpm -qa | grep pidgin) ]]; then
  dnf -y install pidgin
fi

# Enable skype repo
dnf copr enable xvitaly/purple-skypeweb

# Enable Telegram repo
dnf copr enable lsof/telegram-purple

# Spell, Skype, Telegram
dnf -y install purple-plugin_pack-pidgin aspell-ru aspell-en purple-skypeweb pidgin-skypeweb purple-telegram