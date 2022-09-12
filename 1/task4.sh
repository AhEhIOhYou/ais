#!/bin/bash

#shift - сдвигает значения позиционных параметров $#- кол-во всех аргументов

echo "Всего аргументов: $#";
argCount=0;
while [ -n "$1" ]; do
	argCount=$((argCount+1));
	echo "Аргумент-$argCount: $1";
	shift;
done

