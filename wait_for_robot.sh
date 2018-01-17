#!/bin/bash
source .env
Container_status=`docker ps | grep "$robot_container_name"`
while [ -n "$Container_status" ]
do
  echo sleeping;
  sleep 5s;
  Container_status=`docker ps | grep "$robot_container_name"`
done;
echo "connected"
