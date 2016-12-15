#!/bin/bash
# author monster
# time 20160918
# program: restart tcpdump ....

psid=`ps aux | grep 'tcpdump ' | awk '{print $2}'`
kill -9  $psid
chmod 777 /root/scan.$(date +%Y%m%d -d "-1 day").pcap
mv /root/scan.$(date +%Y%m%d -d "-1 day").pcap /var/pcap/
/usr/sbin/tcpdump -i eth0 -w /root/scan.$(date +%Y%m%d).pcap not arp and not ether dst FF:FF:FF:FF:FF:FF and not ip multicast &

