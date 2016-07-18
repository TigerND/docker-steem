
FROM teego/steem_base:0.1
MAINTAINER Aleksandr Zykov <tiger@mano.email>

RUN cd /root ;\
    pwd &&\
    git clone https://github.com/steemit/steem.git &&\
    ( \
      cd steem ;\
      ( \
        git checkout v0.11.0 &&\
        git submodule update --init --recursive &&\
        cmake -DENABLE_CONTENT_PATCHING=OFF -DLOW_MEMORY_NODE=ON CMakeLists.txt &&\
        make install \
      ) \
    )

RUN mkdir -p /witness_node_data_dir

ADD config.ini /witness_node_data_dir

EXPOSE 2001 8090

CMD ["/root/steem/programs/steemd/steemd", "--rpc-endpoint"]
