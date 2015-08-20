#!/bin/bash
. "$(dirname "$0")"/acct-common.sh
for i in $accounts
do
        . "$(dirname "$0")"/acct-ind.sh
	echo "**** Theme updates for user $i / $domain ****";
        su - $i -c "wp theme update --all --path=$path"
        echo "";
done
