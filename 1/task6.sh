#!/bin/bash
extension=$1;
modLimit=$2;
dir=$3;

if [ -n "$extension" ] && [ -n "$modLimit" ] && [ -n "$dir" ]; then
	files=$(find "$dir" -type f -mtime -"$modLimit" -name "*.$extension");
	if [ -n "$files" ]; then
		echo "С расширением .$extension и ограничением в $modLimit дн. найдены: ";
		echo "$files";
	else
		echo "Исполняемых файлов не найдено";
	fi
else
  echo "Где аргументы?"
fi
