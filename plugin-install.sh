#!/bin/bash
. "$(dirname "$0")"/acct-common.sh
for i in $accounts
do
        . "$(dirname "$0")"/acct-ind.sh
	echo "***User $i / $domain ***";
	echo "Installing $1 plugin for $i / $domain";
	su - $i -c "wp plugin install $1 --path=$path"
        su - $i -c "wp plugin activate $1 --path=$path"
        echo "";
done
