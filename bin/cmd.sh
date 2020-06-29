#!/bin/bash

jar="sse-app-api.jar"

function hasRun() {

   if [ ! -d "/proc/$1" ];
   then
      return 0;
   fi

   cmdline=`cat -v "/proc/$1/cmdline"|grep "$jar"`
   if [ "$cmdline" ];
   then
      return 1;
   fi
   return 0;
}

function checkRuning(){

    pid=`cat run/app.pid`
    hasRun "$pid"
    return $?
}
