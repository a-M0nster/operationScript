#!/bin/bash
# author monster
# time 20160923
# program: check program running....

function check(){
    count=`ps -ef | grep $1 |grep -v "grep"|wc -l`
    #echo $count
    if [ 0 == $count ]; then
        echo $(date +%Y%m%d%H)" 异常---"
        #nohup  python  /runscript/working/$1 &
        #/bin/bash /root/restart_tcpdump.sh
        echo "重启"
    else
        echo $(date +%Y%m%d%H)" 正常"
    fi
}

check