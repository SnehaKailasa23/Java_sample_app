#!/bin/bash
source .env
j=0
for i in `grep -n "image_name" .env`; do
Images[$j]=`cut -d '=' -f2 <<<$i`
j=`expr $j+1`
done
j=0
for i in `grep -n "container_name" .env`; do
containers[$j]=`cut -d '=' -f2 <<<$i`
j=`expr $j+1`
done

#################################################
Container_status=`docker ps | grep "$robot_container_name"`
echo $Container_status
while [ -n "$Container_status" ]
do
  echo sleeping;
  sleep 5s;
  Container_status=`docker ps | grep "$robot_container_name"`
done;
#################################################
for i in "${containers[@]}" ; do
Container_status=`docker ps -a | grep "$i"`
if [ ! -z "$Container_status" ];
then
   docker rm -f $i
fi
done
echo "removed containers"
##################################################
for i in "${Images[@]}" ; do
Image_status=`docker images | grep "$i"`
if [ ! -z "$Image_status" ];
then
   docker rmi -f $i
fi
done
echo "removed images"
#################################################

