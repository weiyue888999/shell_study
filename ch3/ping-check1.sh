#!/usr/bin/env bash

net="192.168.0"


echo $(seq 2)

for i in $(seq 1 1 254)
do
	address="$net.$i"
	ping -c2  -i0.2 $address &>/dev/null

	if [ $? -eq 0 ];then
		echo "$address is up"
	else
		echo "$address is down"
	fi
done
