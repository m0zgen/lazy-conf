#!/bin/bash
#
# Script for install highlights for nano
# Created by Yevgeniy Goncharov, http://sys-adm.in

# Install git support
dnf -y install git

cd /tmp && git clone https://github.com/nanorc/nanorc.git && cd nanorc/
make install

touch ~/.nanorc
echo "include ~/.nano/syntax/ALL.nanorc" >> ~/.nanorc

echo "Done!"



