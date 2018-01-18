#!/bin/bash
source .env
Container_status=`docker ps | grep "$robot_container_name"`
count=0
while [ -n "$Container_status" ]
do
  if [ "$count" -le 20 ] 
  then
    echo sleeping;
    sleep 5s;
    Container_status=`docker ps | grep "$robot_container_name"`
    count=`expr $count + 1`
  else
    break
  fi
done;
echo "connected"
if [ $count -ge 20 ]; then
   docker stop $robot_container_name
fi
