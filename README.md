Doucoin
=====================================
```
sudo add-apt-repository ppa:bitcoin/bitcoin
sudo apt-get update
sudo apt-get install build-essential libtool autotools-dev autoconf pkg-config libssl-dev libboost-all-dev libdb4.8-dev libdb4.8++-dev libminiupnpc-dev
// if you need gui, sudo apt-get install libqt5gui5 libqt5core5a libqt5dbus5 qttools5-dev qttools5-dev-tools libprotobuf-dev protobuf-compiler
git clone https://github.com/esrever10/doucoin.git
cd doucoin
./autogen.sh
./configure
make
sudo make install
sudo doucoin-qt
```
