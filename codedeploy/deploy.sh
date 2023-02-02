#!/bin/bash

# 만약 현재 위치한 디렉터리에 .jar 파일이 있다면 .jar 파일 삭제
FILE=*.jar
if [ -e $FILE ]; then
  rm -rf *.jar
fi

nohup java -jar -Dserver.port=8082 /home/ubuntu/application.jar 1> /dev/null 2>&1 &
sleep 30s
