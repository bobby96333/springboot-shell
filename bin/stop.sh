#!/bin/bash
echo "starting stop.. "
source "bin/cmd.sh"
checkRuning
if [ $? -eq 0 ];
then
     echo "proccess no found"
     exit
fi
pid=`cat run/app.pid`
kill "$pid"&
sleep 3
checkRuning
if [ $? -eq 1 ];
then
     kill -9 "$pid"
     echo "kill command timeout, and kill -9 $pid"
fi
echo "stop done!"
