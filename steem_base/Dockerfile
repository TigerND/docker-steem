
FROM ubuntu:16.04
MAINTAINER Aleksandr Zykov <tiger@mano.email>

RUN apt-get update -q &&\
    DEBIAN_FRONTEND=noninteractive apt-get upgrade -qy --no-install-recommends &&\
    DEBIAN_FRONTEND=noninteractive apt-get install -qy --no-install-recommends \
       coreutils dnsutils iputils-ping ca-certificates wget curl net-tools iptables