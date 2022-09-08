#!/bin/bash
if [ -n "$1" ]
then
	dir=$1;
	files=$(find "$dir" -type f -perm /a=x);
	if [ -n "$files" ]
	then
		echo "В $dir найдены исполняемые файлы:";
		echo "$files";
	else
		echo "Исполняемых файлов не найдено";
	fi
fi

