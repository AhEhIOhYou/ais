#!/bin/bash
user=$1
if [ -n "$user" ]; then
  find /home/$user/ -perm /6000;
else
  echo "Имя пользователя?";
fi