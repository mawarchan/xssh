#!/bin/bash
source /app/config.sh

service ssh start
service nginx start


echo "安装 htop等"
apt-get install htop -y

echo "set ngrok token: $NGROK_TOKEN"
ngrok authtoken $NGROK_TOKEN
echo "start ngrok service"
ngrok tcp 22 --log=stdout > ngrok.log
