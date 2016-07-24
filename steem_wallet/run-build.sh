#!/bin/bash

base=`dirname $0`
cd ${base}

dist=`realpath ${base}/dist`

mkdir -p ${dist}
docker run --rm -it -v ${dist}:/root/steem teego/steem_wallet_dev:0.12.2 /usr/bin/make -C /root/src/steem install

docker build -t teego/steem_wallet . $*
