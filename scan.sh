#!/bin/bash

date "+DATE: %m/%d/%y%nTIME: %H:%M:%S"

while read p; do
	echo -e "$p ...\c"
	nmap --script smb-vuln-ms17-010.nse -p445 $p | grep "State: VULNERABLE"
	printf "\n"
done</vagrant/hosts_list.txt

date "+DATE: %m/%d/%y%nTIME: %H:%M:%S"
