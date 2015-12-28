# shadowsocks-client
#
# VERSION 0.0.3

FROM debian:stable
MAINTAINER ddload<ddload@gmail.com>

RUN apt-get update && \
    apt-get install -y build-essential autoconf libtool libssl-dev \
    gawk debhelper dh-systemd init-system-helpers pkg-config git wget mime-support
RUN git clone https://github.com/shadowsocks/shadowsocks-libev.git /tmp/shadowsocks-libev &&  cd /tmp/shadowsocks-libev && dpkg-buildpackage -us -uc -i && cd /tmp && dpkg -i shadowsocks-libev*.deb

# Configure container to run as an executable
ENTRYPOINT ["/usr/local/bin/sslocal"]
