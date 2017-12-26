#!/bin/bash

cd /data/eth-proxy && nohup ./eth-proxy.py >> /dev/null 2>&1 &

while true
do
	/data/ethminer --farm-recheck 200 -U -F http://127.0.0.1:7071 >> /dev/null 2>&1
done

