#!/bin/bash

base=`dirname $0`
cd ${base}

dist=`realpath ${base}/../steem_wallet/dist`

mkdir -p ${dist} &&\
docker run --rm -it -v ${dist}:/root/steem teego/steem_wallet_dev:0.12.1 /usr/bin/make -C /root/src/steem install
