#!/bin/bash

echo "*************************"
echo "DnsDeck IP updater script"
echo "*************************"

clientusername=$1
clientpassword=$2

if [[ ( ! -z "$clientusername" && ! -z "$clientpassword" ) ]]; then
	while true
		do
			curl "https://www.dnsdeck.com/customclient/v1/"$clientusername"/"$clientpassword"/" > /dev/null 2>&1
			sleep 5
		done
else
	echo "Wrong arguments"
fi
