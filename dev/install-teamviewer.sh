#!/bin/bash
# Install Teamviewer into Fedora
# Created by Yevgeniy Goncharov, http://sys-adm.in

dnf -y install http://download.teamviewer.com/download/teamviewer.i686.rpm

# Uninstall
# run-as-root dnf -y --setopt clean_requirements_on_remove=1 erase teamviewer
#
# rpm --quiet --query teamviewer