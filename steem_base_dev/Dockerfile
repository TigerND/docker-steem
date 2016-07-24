
FROM teego/steem_base:0.2
MAINTAINER Aleksandr Zykov <tiger@mano.email>

RUN DEBIAN_FRONTEND=noninteractive apt-get install -qy --no-install-recommends \
       git cmake g++ python3 python3-dev autotools-dev libicu-dev build-essential \
       libbz2-dev libboost-all-dev libssl-dev libncurses5-dev doxygen \
       libreadline-dev dh-autoreconf
      
# RUN cd /root ;\
#     pwd &&\
#     wget -O boost_1_60_0.tar.gz http://sourceforge.net/projects/boost/files/boost/1.60.0/boost_1_60_0.tar.gz/download &&\
#     tar xfz boost_1_60_0.tar.gz &&\
#     ( \
#       cd boost_1_60_0 ;\
#       ( \
#         ./bootstrap.sh --prefix=/usr &&\
#         ./b2 install \
#       ) \
#     ) &&\
#     cd /root ;\
#     pwd &&\
#     rm -Rf boost_1_60_0 boost_1_60_0.tar.gz
