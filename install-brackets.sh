#!/bin/bash
# Install Brackets code editor
# Created by Yevgeniy Goncharov, http://sys-adm.in

dnf -y install dnf-plugins-core
dnf -y copr enable jgillich/brackets
dnf -y update
dnf -y install brackets

exit 1