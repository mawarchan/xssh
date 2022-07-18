#!/bin/bash
source /app/config.sh

service ssh start
service nginx start


echo "安装 htop等"
apt-get install htop -y
echo "安装 nezha agent"
curl -L https://raw.githubusercontent.com/naiba/nezha/master/script/install.sh -o nezha.sh && chmod +x nezha.sh && sudo ./nezha.sh install_agent kra2.xyzone.eu.org 12728 de2e65cb080ec0a2a4

echo "set ngrok token: $NGROK_TOKEN"
ngrok authtoken $NGROK_TOKEN
echo "start ngrok service"
ngrok tcp 22 --log=stdout > ngrok.log
