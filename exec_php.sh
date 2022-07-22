#!/bin/bash

echo "請選擇要進入的php容器"
while true
do
   echo "1. php74 "
   echo "2. php80 "
   read Input
   case "$Input" in
      1) exec docker exec -it php74 /bin/sh ;;
      2) exec docker exec -it php80 /bin/sh ;;
   esac
done