#!/bin/bash
. "$(dirname "$0")"/acct-common.sh
for i in $accounts
do
        . "$(dirname "$0")"/acct-ind.sh
	echo "***User $i / $domain ***";
        status=`su - $i -c "wp plugin status --path=$path" | grep -ci $1`
        if [ $status -gt 0 ]; then
		echo "Updating $1 plugin for $i / $domain";
	        su - $i -c "wp plugin update $1 --path=$path"
	else
		echo "$1 plugin not found for $i / $domain";
	fi
        echo "";
done
