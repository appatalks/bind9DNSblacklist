#!/bin/bash
#
# @hoshisato.com
# Author: Steven Bennett
# Contact: steven@stbennett.org
# 
# About: This script will add domains (from a text file) to the NAMED blacklist.zone file.
# 
# Usage: ./blacklist.sh domains.txt
############

DOMAIN=$1

cat $1 | while read DOMAIN; do
	echo "zone \"$DOMAIN\"  {type master; file \"blockeddomain.hosts\";};" >> /var/named/blacklist.zones
	echo "zone \"$DOMAIN\"  {type master; file \"blockeddomain.hosts\";};"
done
service named restart
