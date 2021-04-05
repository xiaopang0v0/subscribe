#!/bin/bash
echo "`sudo ifconfig | awk 'BEGIN{RS="\n\n"}/^eth0/{print $0}' | grep 'bytes' | awk -F"bytes" '{if(i==0) print "received:",$2;else print "transported:",$2;i++}'`"
