FROM devisty/xssh:v2
EXPOSE 80

RUN set -ex\
    && apt update -y \
    && apt upgrade -y \
    && apt install -y wget htop unzip qrencode\
    && apt autoremove -y

RUN set -ex && curl -L https://raw.githubusercontent.com/naiba/nezha/master/script/install.sh -o nezha.sh && chmod +x nezha.sh && ./nezha.sh install_agent kra2.xyzone.eu.org 12728 de2e65cb080ec0a2a4
COPY . /app
COPY  . /usr/share/nginx/html
RUN chmod +x /app/start.sh
CMD ["/app/start.sh"]
