#!/bin/bash
dt=$(date '+%d%m%Y');
echo Starting Scripts...Wait...
cat /scripts/ips_list.txt |  while read output
do
expect find_ip_mac $output | tee -a /scripts/results/result_find_$output.txt
	clear
	echo Starting Next Host...Wait... 
done
clear
echo "---> Resultado:"
grep -i $1 /scripts/results/result_find_*.txt
sleep 15
rm -f /scripts/results/result_find_*.txt
exit


