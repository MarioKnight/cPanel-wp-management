#!/bin/bash
. "$(dirname "$0")"/acct-common.sh
for i in $accounts
do
        . "$(dirname "$0")"/acct-ind.sh
        echo "*** Updating to WordPress version $1 for user: $i / $domain ***"
        su - $i -c "wp core update --version=$1 --path=$path"
        su - $i -c "wp core update-db --path=$path"
	echo "*** User $i / $domain complete! ***"
        echo "";
done
