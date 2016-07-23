#!/bin/bash
# Add new script to this dir
# Created by Yevgeniy Goncharov, http://sys-adm.in

if [[ -z $1 ]]; then
  echo "Please set script name.."
else
  # Create and set ex perm
  touch $1 && chmod +x $1
  # Add necessary strings
  cat > $1 <<EOF
#!/bin/bash
# Add script description
# Created by Yevgeniy Goncharov, http://sys-adm.in
EOF
  subl $1
fi
