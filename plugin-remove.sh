#!/bin/bash
. "$(dirname "$0")"/acct-common.sh
for i in $accounts
do
        . "$(dirname "$0")"/acct-ind.sh
	echo "***User $i / $domain ***";
	echo "Removing $1 plugin for $i / $domain";
        su - $i -c "wp plugin uninstall $1 --path=$path --deactivate"
        echo "";
done
