FROM alpine:latest
MAINTAINER Chuan.Li <lichuanchou@163.com>

#------------------------------------------------------------------------------
# Environment variables:
#------------------------------------------------------------------------------

RUN \
  apk --update --upgrade add \
      py-pip \
      privoxy \
      libsodium-dev \
  && rm /var/cache/apk/*

RUN pip install https://github.com/shadowsocks/shadowsocks/archive/master.zip -U


ENV SERVER_ADDR= \
    SERVER_PORT=8899  \
    METHOD=aes-256-cfb \
    TIMEOUT=300 \
    PASSWORD=

#------------------------------------------------------------------------------
# Populate root file system:
#------------------------------------------------------------------------------

ADD rootfs /

#COPY gfwlist.action /etc/privoxy/

#RUN sed -i '$a\actionsfile gfwlist.action' /etc/privoxy/config

#------------------------------------------------------------------------------
# Expose ports and entrypoint:
#------------------------------------------------------------------------------
EXPOSE 8118 7070

ENTRYPOINT ["/entrypoint.sh"]
