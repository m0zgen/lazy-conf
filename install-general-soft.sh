#!/bin/bash
# Install general software
# Created by Yevgeniy Goncharov, http://sys-adm.in

# rpm -Uvh http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-24.noarch.rpm
# rpm -Uvh http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-24.noarch.rpm

# Install  RPMFusion
dnf -y install http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Install General use software
dnf -y install git mc htop nano wget rdesktop arandr tigervnc xclip hunspell-ru ccze youtube-dl ffmpeg nmap alacarte evolution geany gimp freemind vlc kruler plank roxterm wine

# Install Desktops
dnf config-manager --add-repo http://download.opensuse.org/repositories/home:Pival81/Fedora_23/home:Pival81.repo && dnf -y install vibrancy-colors-icon-theme
dnf config-manager --add-repo http://download.opensuse.org/repositories/home:Horst3180/Fedora_24/home:Horst3180.repo && dnf -y install arc-theme && dnf -y install gnome-icon-theme
