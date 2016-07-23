#!/bin/bash
# Allow user mount disks without password
# Created by Yevgeniy Goncharov, http://sys-adm.in

groupadd diskusers
usermod -a -G diskusers $(whoami)

# Create rule file
touch /etc/polkit-1/rules.d/99-mount-partitions.rules
cat > /etc/polkit-1/rules.d/99-mount-partitions.rules <<EOF
polkit.addRule(function(action, subject) {
    if (action.id == "org.freedesktop.udisks2.filesystem-mount-system" && subject.isInGroup("diskusers")) {
       return polkit.Result.YES;
    }
});
EOF

echo "Done! Please logoff and logon or reboot system for apply changes!"