#!/bin/bash
IFS=':'
read -ra pathArrDir <<<"$PATH"
for pathDir in "${pathArrDir[@]}"; do
	if [ ! -d "$pathDir" ]; then
		echo "$pathDir - не корректный, директории не существует";
	fi
done
