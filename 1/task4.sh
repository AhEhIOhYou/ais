#!/bin/bash
echo "Всего аргументов: $#";
argCount=0;
while [ -n "$1" ]
do
	argCount=$((argCount+1));
	echo "Аргумент-$argCount: $1";
	shift;
done

