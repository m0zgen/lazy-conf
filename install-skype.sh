# Install skype
# Created by Yevgeniy Goncharov, http://sys-adm.in

# ---------------------------------------------------------- VARIABLES #
PATH=$PATH:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin
SCRIPTPATH=$(cd `dirname "${BASH_SOURCE[0]}"` && pwd)

DWNDIR="$SCRIPTPATH/dwn"
FILE="skype-linux.rpm"
mkdir -p "$DWNDIR" && cd "$DWNDIR"

wget -c "https://get.skype.com/go/getskype-linux-beta-fc10" -O "$FILE"

if [[ ! -f "$FILE" ]]; then
	exit 1
fi

dnf -y install gtk2-engines.i686
dnf -y install $FILE

