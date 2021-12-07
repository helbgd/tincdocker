FROM alpine
MAINTAINER helbgd <helbgd@gmail.com>

RUN apk add --no-cache iptables tinc

COPY init.sh /init.sh
COPY docker-entrypoint.sh /entrypoint.sh
COPY peer.sh /usr/local/bin/peer.sh

VOLUME /etc/tinc

EXPOSE 655/tcp 655/udp

ENTRYPOINT ["/entrypoint.sh"]
