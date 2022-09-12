#!/bin/bash
myUser=$1
if [ -n "$myUser" ]; then

  usersInGroup=$(grep "$myUser" /etc/group | cut --d=':' -f 4);

  if [ -z "$usersInGroup" ]; then
      echo "Пользователей в тех же группах не существует";
      exit
  fi
  echo "Список пользователей в тех же группах, что и ${myUser}:"

  for users in $usersInGroup; do

    if [ -n "$users" ]; then
      IFS=','
      arrUsers=($users)

      for user in "${arrUsers[@]}"; do
        if [ -n "$user" ] && [ "$user" != "$myUser" ]; then
            echo "$user"
        fi
      done
    fi

  done
else
  echo "Имя пользователя?"
fi