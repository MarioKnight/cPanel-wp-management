#!/bin/bash
path="/home/$i/public_html"
domain=`cat /var/cpanel/userdata/$i/main | grep "main_domain" | awk '{ print $2}'`
