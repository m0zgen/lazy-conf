#!/bin/bash
# Install general software
# Created by Yevgeniy Goncharov, http://sys-adm.in

# rpm -Uvh http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-24.noarch.rpm
# rpm -Uvh http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-24.noarch.rpm

dnf install http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm



dnf -y install git mc htop nano wget rdesktop arandr tigervnc xclip hunspell-ru ccze youtube-dl ffmpeg nmap alacarte evolution geany gimp freemind vlc kruler plank roxterm
