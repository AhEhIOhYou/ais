#!/bin/bash
string=$1;
myeventsFile=".myevents";
configFile="myevents.conf";
n=7;

if [ -f $configFile ]; then
	n=$(head -n 1 $configFile | grep -o -E "[0-9]+");
fi

if [ -n "$string" ]; then
	NOW=$(date +"%m-%d-%Y, %T");
	echo -e $NOW"\t"$string >> $myeventsFile;
else
	tail -n $n "$myeventsFile";
fi
