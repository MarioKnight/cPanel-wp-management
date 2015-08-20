#!/bin/bash
. "$(dirname "$0")"/acct-common.sh
for i in $accounts
do
        . "$(dirname "$0")"/acct-ind.sh
        status=`su - $i -c "wp plugin status --path=$path" | grep $1`
        echo "User: $i / $domain - $status";
done
