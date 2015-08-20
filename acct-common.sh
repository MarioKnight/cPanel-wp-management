#!/bin/bash
nonwp=`cat "$(dirname "$0")"/nonwp`
accounts=`cat /etc/userdomains | awk '{ print $2}' | sort | uniq | grep -vE $nonwp`
