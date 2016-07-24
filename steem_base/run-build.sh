#!/bin/bash

base=`dirname $0`
cd ${base}

docker build -t teego/steem_base:0.2 . $*
