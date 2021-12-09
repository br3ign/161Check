#!/bin/bash

if [ -z "$1" ]; then
echo "[!] Missing target file"
exit 0
fi

for ip in $(cat $1); do
result=`snmp-check $ip | grep "timeout"`
if [ -z "$result" ]; then
echo "[*] $ip: Connection successful"
else
echo "[!] $ip: Connection Timeout"
fi
done
