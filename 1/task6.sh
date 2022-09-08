#!/bin/bash
if [ -n "$1, $2, $3" ]
then
	extension=$1;
	modLimit=$2;
	dir=$3;

	files=$(find "$dir" -type f -mtime -"$modLimit" -name "*.$extension");
	if [ -n "$files" ]
	then
		echo "С расширением .$extension и ограничением в $modLimit день найдены: ";

		echo "$files";
	else
		echo "Исполняемых файлов не найдено";
	fi
fi
