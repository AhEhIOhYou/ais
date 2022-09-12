#!/bin/bash
user=$1
dir=$2
if [ -n "$user" ] && [ -n "$dir" ]; then
    echo $(su "$user" -c "du -hs $dir");
else
  echo "Имя пользователя и директория?";
fi