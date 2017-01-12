FROM alpine:latest

ENV GOACCESS_VERSION=1.1.1

RUN apk add --no-cache build-base wget geoip-dev ncurses-dev && \
    mkdir /tmp/goaccess && \
    cd /tmp/goaccess && \
    wget http://tar.goaccess.io/goaccess-$GOACCESS_VERSION.tar.gz && \
    tar -xzvf goaccess-$GOACCESS_VERSION.tar.gz && \
    cd goaccess-$GOACCESS_VERSION && \
    ./configure --enable-geoip --enable-utf8 && \
    make && make install && \
    cd / && rm -rf /tmp/goaccess && \
    apk del --no-cache build-base wget

ENTRYPOINT ["/usr/local/bin/goaccess"]
