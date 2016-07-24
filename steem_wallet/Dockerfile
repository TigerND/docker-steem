
FROM teego/steem_base:0.2
MAINTAINER Aleksandr Zykov <tiger@mano.email>

RUN mkdir -p /witness_node_data_dir

ADD dist /usr/local

ADD config.ini /witness_node_data_dir

EXPOSE 2001 8090

CMD ["/usr/local/bin/steemd", "--rpc-endpoint"]
