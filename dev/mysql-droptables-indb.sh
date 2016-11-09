#!/bin/bash
# Drop tables in database
# Created by Yevgeniy Goncharov, http://sys-adm.in

dbUser="$1"
dbUserPass="$2"
dbName="$3"
scriptName=`basename "$0"`

if [[ $# -ne 3 ]]; then
	echo -e "Script usage: ./$scriptName dbUserName dbUserPass dbName"
	exit 1
fi


allTABLES=$(mysql -u $dbUser -p$dbUserPass $dbName -e 'show tables' | awk '{ print $1}' | grep -v '^Tables' )

echo ${allTABLES[*]}


for i in $allTABLES; do
	echo "Delete table $i from $dbName"
	mysql -u $dbUser -p$dbUserPass $dbName -e "drop table $i"
done
