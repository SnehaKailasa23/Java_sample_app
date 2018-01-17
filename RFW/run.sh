#!/bin/bash
count=0
while ! nc -z jboss 8080 
do
 if [ $count -le 180 ] 
 then
  echo sleeping
  sleep 5
  count=`expr $count + 1`
 fi
done
echo connected
if [ $count -le 180 ]; then
   sh /robot/robot.sh jboss 8080 cicd_sample/cicd_sample@52.67.80.187:1521/GGKF
else
   exit 1
fi
