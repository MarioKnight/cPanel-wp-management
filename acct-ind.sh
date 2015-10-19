#!/bin/bash
domain=`cat /var/cpanel/userdata/$i/main | grep "main_domain" | awk '{ print $2}'`
path=`cat /var/cpanel/userdata/$i/$domain | grep "documentroot" | awk '{ print $2}'`
