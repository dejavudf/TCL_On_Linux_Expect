#!/bin/bash
#hostname -I | cut -d" " -f1>myip.txt
#cat myip.txt | read myip
dt=$(date '+%d%m%Y');
echo Starting Scripts...Wait...
cat /scripts/ips_list.txt |  while read output
do
snmpwalk -v 2c -c sec_saude_ro $output xpto | tee /scripts/results/snmp_$dt"_"$output.txt
	clear
	echo Starting Next Host...Wait... 
done
grep -i "$1" /scripts/results/snmp_$dt"_"*.txt
sleep 5

