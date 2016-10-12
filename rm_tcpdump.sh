#!/bin/bash
# author monster
# time 20160918
# program: remove tcpdump ....

rm -rf  /var/pcap/$(date +%Y%m -d "-1 month")*