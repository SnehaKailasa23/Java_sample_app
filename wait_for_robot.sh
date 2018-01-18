#!/bin/bash
source .env
Container_status=`docker ps | grep "$robot_container_name"`
while [ -n "$Container_status" ]
do
  if [ $count -le 180 ] 
  then
    echo sleeping;
    sleep 5s;
    Container_status=`docker ps | grep "$robot_container_name"`
  fi
done;
echo "connected"
if [ $count -le 180 ]; then
   docker stop $robot_container_name
else
   exit 1
fi
