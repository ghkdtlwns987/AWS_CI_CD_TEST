#!/bin/bash

nohup java -jar -Dserver.port=8082 /home/ubuntu/MH-0.0.1-SNAPSHOT.jar 1> /dev/null 2>&1 &
sleep 30s
