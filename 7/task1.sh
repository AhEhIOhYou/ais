#!/bin/bash
writeTo=".netstatlog";

echo "-----+-----+-----+-----+-----+-----" >> $writeTo;
echo "Update time: $(date)" >> $writeTo;
echo "$(netstat -s)" >> $writeTo;