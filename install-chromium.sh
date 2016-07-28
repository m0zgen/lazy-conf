#!/bin/bash
# Install Google Chromium
# Created by Yevgeniy Goncharov, http://sys-adm.in

if [[ ! -f /etc/yum.repos.d/churchyard-chromium-russianfedora-tested-fedora-24.repo ]]; then
  wget https://copr.fedorainfracloud.org/coprs/churchyard/chromium-russianfedora-tested/repo/fedora-24/churchyard-chromium-russianfedora-tested-fedora-24.repo -P /etc/yum.repos.d/
fi

dnf -y install chromium