#!/bin/bash
# Install Fedora KVM
# Created by Yevgeniy Goncharov, http://sys-adm.in

# PLEASE... TEST ME IN NEW SYSTEM!!!

# Install KVM packets
dnf -y groupinstall "Virtualization"
dnf -y install qemu-img  libvirt libvirt-python libvirt-client

# Start and enable KVM
systemctl start libvirtd && systemctl enable libvirtd