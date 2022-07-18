FROM devisty/xssh:v2
EXPOSE 80

COPY . /app
COPY  . /usr/share/nginx/html
apk add htop
RUN chmod +x /app/start.sh
CMD ["/app/start.sh"]
