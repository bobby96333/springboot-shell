#!/bin/bash
echo "starting now..."
source "bin/cmd.sh" 
checkRuning
if [ $? -eq 1 ];
then
   echo "proccess runing now!"
   exit
fi
cd www/
nohup java -jar sse-app-api.jar -Xms 1024m -Xmx 5024m >../logs/output.log 2>../logs/error.log  & echo $! >../run/app.pid &
cd ../
echo "starting done!"

