#!/bin/bash
echo "starting deploy now..."
source "bin/stop.sh"

rm -rf www/*

cp -r tmp/* www/

echo "copy file success!"
source "bin/start.sh"
echo "done!"
