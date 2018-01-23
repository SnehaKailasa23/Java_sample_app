#!/bin/bash
source .env
Container_status=`docker ps | grep "$robot_container_name"`
count=0
while [ -n "$Container_status" ]
do
  if [ "$count" -le 180 ] 
  then
    echo sleeping;
    sleep 5s;
    Container_status=`docker ps | grep "$robot_container_name"`
    count=`expr $count + 1`
  else
    break
  fi
done;
