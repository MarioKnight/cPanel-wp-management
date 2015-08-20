#!/bin/bash
. "$(dirname "$0")"/acct-common.sh
for i in $accounts
do
        . "$(dirname "$0")"/acct-ind.sh
	echo "**** Plugin updates for user $i / $domain ****";
        su - $i -c "wp plugin update --all --path=$path"
        echo "";
done
