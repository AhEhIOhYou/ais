#!/bin/bash
string=$1;
myeventsFile=".myevents";
configFile="myevents.conf";
n=7;
count=1

if [ -f $configFile ]; then
	n=$(head -n 1 $configFile | grep -o -E "[0-9]+");
fi

for param in "$*"
do
  count=$(( $count + 1 ))
  if [ "$string" == "-d" ] && [ -n "$count" ]; then
    IFS=''
      matchesNotes=$(cat "$myeventsFile" | grep "^${data}.*");
      echo $matchesNotes | tail -n $n;
  fi
done

if [ -n "$string" ] && [ "$string" != "-d" ]; then
	NOW=$(date +"%m-%d-%Y, %T");
	echo -e $NOW"\t"$string >> $myeventsFile;
fi
