#!/bin/bash
if [ -n "$1" ]
then
	prg=$(which "$1");
	if [ -n "$prg" ]
	then
		echo "Путь к $1 имеется в PATH";
	else
		echo "Путь к $1 отсутствует в PATH";
	fi
fi
