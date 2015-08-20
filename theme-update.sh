#!/bin/bash
. "$(dirname "$0")"/acct-common.sh
for i in $accounts
do
        . "$(dirname "$0")"/acct-ind.sh
	echo "***User $i / $domain ***";
        status=`su - $i -c "wp theme status --path=$path" | grep -ci $1`
        if [ $status -gt 0 ]; then
		echo "Updating $1 theme for $i / $domain";
	        su - $i -c "wp theme update $1 --path=$path"
	else
		echo "$1 theme not found for $i / $domain";
	fi
        echo "";
done
