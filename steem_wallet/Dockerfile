
FROM teego/steem_base:0.1
MAINTAINER Aleksandr Zykov <tiger@mano.email>

RUN cd /root ;\
    pwd &&\
    git clone https://github.com/bitcoin/secp256k1 &&\
    ( \
      cd secp256k1 ;\
      ( \
        ./autogen.sh &&\
        ./configure &&\
        make &&\
        ./tests \
      ) \
    )
    
RUN cd /root ;\
    pwd &&\
    git clone https://github.com/steemit/steem &&\
    ( \
      cd steem ;\
      ( \
        git submodule update --init --recursive &&\
        cmake -DENABLE_CONTENT_PATCHING=OFF -DLOW_MEMORY_NODE=ON CMakeLists.txt &&\
        make &&\
        mkdir -p /witness_node_data_dir \
      ) \
    )

ADD config.ini /witness_node_data_dir

EXPOSE 2001 8090

CMD ["/root/steem/programs/steemd/steemd", "--rpc-endpoint"]
