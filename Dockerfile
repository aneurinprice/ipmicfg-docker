FROM debian:buster-slim

COPY . /ipmi

RUN set -eux; \
  export DEBIAN_FRONTEND=noninteractive; \
  apt-get update; \
  apt-get -y install unzip; \
  cd /ipmi; \
  unzip IPMI*.zip; \
  mv IPMI*/Linux/64bit/IPMICFG-Linux.x86_64 /usr/local/bin/ipmicfg; \
  rm -rf /ipmi
