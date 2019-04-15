# shadowsocks-privoxy

## Info:

shadowsocks client for socks5 proxy
privoxy for http proxy
Only 16MB size
Based on [shadowsocks-privoxy](https://github.com/bluebu/shadowsocks-privoxy)
Able to support more methods (Such: chacha20-ietf-poly1305,aes-192-gcm)

## Image:

~~~bash
docker pull zeratullich/shadowsocks-privoxy
~~~


## Run:

~~~bash
docker run -i -t -e SERVER_ADDR=ss.server.ip -e SERVER_PORT=port -e PASSWORD=123456 -e METHOD=chacha20-ietf-poly1305 zeratullich/shadowsocks-privoxy
~~~
