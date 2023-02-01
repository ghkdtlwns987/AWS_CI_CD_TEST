#!/bin/bash
# 타임존 세팅
rm /etc/localtime
ln -s /usr/share/zoneinfo/Asia/Seoul /etc/localtime

# nginx 설치
apt install nginx1 -y
service nginx start
chmod 755 /var/log/nginx

# nginx config file 위치 이동
mv /home/ubuntu/nginx/*.conf /etc/nginx/conf.d/
rm -rf /home/ubuntu/nginx

service nginx restart

# open jdk 11 설치
apt install openjdk11-jdk -y

# deploy.sh 권한 변경
chmod +x /home/ubuntu/deploy.sh
