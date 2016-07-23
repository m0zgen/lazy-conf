#!/bin/bash
# Allow current user use Virt Manager
# Created by Yevgeniy Goncharov, http://sys-adm.in

# Allow current user work with virt-manager
groupadd vmusers
usermod -a -G vmusers $(whoami)

# Create rule file
touch /etc/polkit-1/rules.d/80-libvirt.rules
cat > /etc/polkit-1/rules.d/80-libvirt.rules <<EOF
polkit.addRule(function(action, subject) {
  if (action.id == "org.libvirt.unix.manage" && subject.local && subject.active && subject.isInGroup("vmusers")) {
      return polkit.Result.YES;
  }
});
EOF

echo "Done! Please logoff and logon or reboot system for apply changes!"