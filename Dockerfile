# shadowsocks-client
#
# VERSION 0.0.3

FROM debian:stable
MAINTAINER ddload<ddload@gmail.com>

RUN apt-get update
RUN apt-get install -y wget
RUN echo "deb http://shadowsocks.org/debian stable main" >> /etc/apt/sources.list
RUN wget -O- http://shadowsocks.org/debian/1D27208A.gpg | apt-key add -
RUN apt-get update && \
    apt-get install -y shadowsocks-libev

# Configure container to run as an executable
ENTRYPOINT ["/usr/local/bin/sslocal"]
