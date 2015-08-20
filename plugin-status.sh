#!/bin/bash
. "$(dirname "$0")"/acct-common.sh
for i in $accounts
do
        . "$(dirname "$0")"/acct-ind.sh
        echo "***User $i / $domain ***";
        su - $i -c "wp plugin status --path=$path"
        echo "";
done
