#!/bin/bash
#
# Script for install Double Commander in to Fedora
# Created by Yevgeniy Goncharov, http://sys-adm.in

# Download repo file into yu.repos.d
wget http://download.opensuse.org/repositories/home:/Alexx2000/openSUSE_11.4/home:Alexx2000.repo -P /etc/yum.repos.d/

# Install Dcmd
dnf -y install doublecmd-gtk doublecmd-help-ru