FROM devisty/xssh:v2
EXPOSE 80

COPY . /app
COPY  . /usr/share/nginx/html
RUN apt-get install htop
RUN chmod +x /app/start.sh
CMD ["/app/start.sh"]
