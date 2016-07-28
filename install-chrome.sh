#!/bin/bash
# Install Google Chrome
# Created by Yevgeniy Goncharov, http://sys-adm.in

rpm --import https://dl-ssl.google.com/linux/linux_signing_key.pub
dnf -y install https://dl.google.com/linux/direct/google-chrome-stable_current_$(uname -i).rpm