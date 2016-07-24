#!/bin/bash

base=`dirname $0`
cd ${base}

docker build -t teego/steem_wallet_dev:0.12.2 . $*
