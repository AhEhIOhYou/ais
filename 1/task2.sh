#!/bin/bash
if [ -n "$1" ]
then
	lines=$(wc -l $1);
	words=$(wc -w $1);
	echo "Файл: $1";
	echo "Строк: " ${lines//[^0-9]/};	
	echo "Слов: " ${words//[^0-9]/};
fi
