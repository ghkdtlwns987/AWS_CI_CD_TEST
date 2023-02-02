#!/bin/bash
nohup java -jar -Dserver.port=8082 /home/ubuntu/application.jar 1> /dev/null 2>&1 &
sleep 30s
