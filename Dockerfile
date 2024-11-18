FROM debian:buster-slim

LABEL maintainer="Aneurin Price adp@nyeprice.space"
COPY . /ipmi

RUN set -eux; \
  export DEBIAN_FRONTEND=noninteractive; \
  apt-get update; \
  apt-get -y install unzip; \
  cd /ipmi; \
  unzip IPMI*.zip; \
  mv IPMI*/Linux/64bit/IPMICFG-Linux.x86_64 /usr/local/bin/ipmicfg; \
  rm -rf /ipmi
