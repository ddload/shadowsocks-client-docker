# shadowsocks-client
#
# VERSION 0.0.3

FROM debian:stable
MAINTAINER ddload<ddload@gmail.com>
RUN echo deb http://shadowsocks.org/debian stable main
RUN apt-get update && \
    apt-get install -y shadowsocks-libev

# Configure container to run as an executable
ENTRYPOINT ["/usr/local/bin/sslocal"]
