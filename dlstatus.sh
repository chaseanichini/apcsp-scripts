#!/bin/bash
HOSTNAMES="dl01 dl02 dl03 dl04 dl05 dl06 dl07 dl08 dl09 dl10 dl11"

for hostname in $HOSTNAMES ; do
ping -c 1 $hostname >/dev/null
	if [ $? == 0 ] ; then
		echo "$hostname : alive"
	elif [ $? == 1 ] ; then
		echo "$hostname : dead"
	fi
done
