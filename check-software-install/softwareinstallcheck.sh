#!/bin/bash
# program to check whether a particular software is installed

 searchkey=$1
 counts=$(dpkg -l | awk {'print $2'} |grep -i "$searchkey")

 # variable count will have 0 if given software is installed
 if [ $counts = 0 ]; then
 	echo "$searchkey is not installed."
 else 
 	echo "$searchkey is installed."
 fi

