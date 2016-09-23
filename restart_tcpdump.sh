#!/bin/bash

psid=`ps aux | grep 'tcpdump ' | awk '{print $2}'`
kill -9  $psid
chmod 777 /root/scan.$(date +%Y%m%d -d "-1 day").pcap
mv /root/scan.$(date +%Y%m%d -d "-1 day").pcap /var/pcap/
/usr/sbin/tcpdump -i eth0 -w /root/scan.$(date +%Y%m%d).pcap tcp port 80 or udp &
