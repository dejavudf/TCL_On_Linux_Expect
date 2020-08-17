#!/bin/bash
dt=$(date '+%d%m%Y');
echo Starting Scripts...Wait...
cat /scripts/ips_list.txt |  while read output
do
expect $1 $output | tee /scripts/results/filter.txt
clear
echo $output >>/scripts/results/filter_cascat.txt
grep -i "DESI  FORWARDING    NONE" /scripts/results/filter.txt >>/scripts/results/filter_cascat.txt
echo '#########################################################' >>/scripts/results/filter_cascat.txt
clear
echo Starting Next Host...Wait... 
done
