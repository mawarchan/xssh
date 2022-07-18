#!/bin/bash
source /app/config.sh
apt-get install htop

service ssh start
service nginx start

echo "set ngrok token: $NGROK_TOKEN"
ngrok authtoken $NGROK_TOKEN
echo "start ngrok service"
ngrok tcp 22 --log=stdout > ngrok.log
