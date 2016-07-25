#!/bin/bash
# Add user to sudoers file
# Created by Yevgeniy Goncharov, http://sys-adm.in

# If current user root or not

ADMINGROUPNAME="lazy-admins"

ADMINGROUP="$ADMINGROUPNAME ALL=(ALL) ALL"

updateSudoers () {
  echo -e "\n# Add from lazy-conf script\n%$ADMINGROUPNAME ALL=(ALL) ALL" >> /etc/sudoers
}

addGroup() {
  groupadd $ADMINGROUPNAME
}

if [[ $(whoami) == "root" ]]; then

  if [[ -z $1 ]]; then
    echo "Please enter User name"
  else
    if [[ ! -z $(grep "$ADMINGROUP" "/etc/sudoers") ]]; then echo "Check sudoers - OK!"; else updateSudoers; fi
      if [[ ! -z $(grep "$ADMINGROUPNAME" "/etc/group") ]]; then echo "Check group - OK"; else addGroup; fi

        if [[ ! -z $(grep "$1" "/etc/passwd") ]]; then

          usermod -a -G $ADMINGROUPNAME $1
          echo "Done! Please logon / logoff or reboot PC..."
          echo "Usage - sudo command"
        else

          echo "User not exist (("
        fi

  fi

else
  echo "You must bee root!"
fi