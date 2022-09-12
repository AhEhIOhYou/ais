#!/bin/bash
IFS=":";
users=$(cat /etc/passwd | cut --d=':' -f 1,7);
echo $users;
