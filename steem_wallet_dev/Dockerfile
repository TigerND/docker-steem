
FROM teego/steem_base_dev:0.2
MAINTAINER Aleksandr Zykov <tiger@mano.email>

RUN mkdir -p /root/src &&\
    mkdir -p /root/steem

RUN cd /root/src ;\
    git clone https://github.com/steemit/steem.git steem &&\
    ( \
      cd steem ;\
      ( \
        git checkout v0.12.1 &&\
        git submodule update --init --recursive &&\
        cmake -DCMAKE_INSTALL_PREFIX=/root/steem -DENABLE_CONTENT_PATCHING=OFF -DLOW_MEMORY_NODE=ON CMakeLists.txt &&\
        make install \
      ) \
    )
    
RUN mkdir -p /witness_node_data_dir

ADD config.ini /witness_node_data_dir

EXPOSE 2001 8090

CMD ["/root/steem/bin/steemd", "--rpc-endpoint"]
