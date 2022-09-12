#!/bin/bash
process=$1;

if [ -n "$process" ]; then
  pkill -15 "$process";
  echo "$process изящно убит";
else
  echo "Имя процесса?";
fi