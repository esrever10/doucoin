FROM ubuntu:latest
RUN apt-get update \
    && apt-get install -y software-properties-common
RUN add-apt-repository -y ppa:bitcoin/bitcoin \
    && apt-get update \
    && apt-get install -y build-essential libtool autotools-dev autoconf pkg-config libssl-dev libboost-all-dev libdb4.8-dev libdb4.8++-dev libminiupnpc-dev git bsdmainutils

RUN git clone https://github.com/esrever10/doucoin.git \
    && cd doucoin \
    && ./autogen.sh \
    && ./configure \
    && make\
    && make install

EXPOSE 23333
EXPOSE 23332

# fake entrypoint, should be /usr/bin/doucoind xxx
ENTRYPOINT ["tail", "-f", "/dev/null"]
