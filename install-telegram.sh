#!/bin/bash
# Install Telkegram into Fedora
# Created by Yevgeniy Goncharov, http://sys-adm.in

# Add repo
dnf copr -y enable rommon/telegram

# Install Telegram
dnf -y install telegram-desktop

# Uninstall
# dnf copr -y disable rommon/telegram
# dnf -y --setopt clean_requirements_on_remove=1 erase telegram-desktop