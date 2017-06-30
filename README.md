Doucoin
=====================================
# Dependencies

## Ubuntu
```
sudo add-apt-repository ppa:bitcoin/bitcoin
sudo apt-get update
sudo apt-get install build-essential libtool autotools-dev autoconf \
  pkg-config libssl-dev libboost-all-dev libdb4.8-dev libdb4.8++-dev libminiupnpc-dev
// if you need gui
// sudo apt-get install libqt5gui5 libqt5core5a \
  libqt5dbus5 qttools5-dev qttools5-dev-tools libprotobuf-dev protobuf-compiler
```
## Mac
```
brew install autoconf automake libtool berkeley-db@4 boost miniupnpc openssl pkg-config protobuf qt
export LDFLAGS=-L/usr/local/opt/openssl/lib
export CPPFLAGS=-I/usr/local/opt/openssl/include
export CXXFLAGS=-std=c++11

```
# Build
```
git clone https://github.com/esrever10/doucoin.git
cd doucoin
./autogen.sh
./configure
make
sudo make install
```
