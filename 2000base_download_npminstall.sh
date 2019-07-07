#!/bin/bash
apt update
apt install pkg-config -y
apt install curl -y
apt install git -y
apt install python2.7 -y
apt install curl -y

#apt install webpack -y
#docker
wget -qO- https://get.docker.com/ | sh
service docker start
docker run hello-world
# nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash
. ~/.bashrc
#nvm install 8.16.0
#apt install nodejs -y
#nodejs
apt install nodejs -y
node -v
npm -v
npm install -g cnpm --registry=https://registry.npm.taobao.org
cnpm install -g webpack@4.30.0
cnpm install webpack-cli@3.3.2
###pm2
cnpm  install -g pm2
#apt install libboost-python-dev libboost-thread-dev libbluetooth-dev libglib2.0-dev
# libusb
apt install libusb-1.0-0-dev libudev-dev -y

# autoconf
apt install autoconf -y

# libpng
apt install libpng16-16 -y

# build-essential
apt install build-essential -y

# nanomsg
apt install libnanomsg4 libnanomsg-dev -y

# git clone gateway
git clone https://github.com/sunzhen2408/zhenlingGateway.git
git checkout noedit
# git clone framework
git clone https://github.com/sunzhen2408/zhenlingFrameworknew.git
## ip framework
VAR="eth0"
ip="$(ip addr show "$VAR"|grep "inet\b"|awk '{print $2}')"
local_ip="${ip%/*}"
chmod -R 777 /root/zhenlingFrameworknew
sed -i 's/initip/'${local_ip}'/g' /root/zhenlingFrameworknew/Server/ServerConfig.js

# nats
docker pull nats:latest
docker run -d --restart=always --name nats  -p 4222:4222  -ti nats:latest

#install
cd /root/zhenlingGateway
cnpm install
echo "cnpm install  successful"
npm start
#cd /root/zhenlingFrameworknew


##  npm uninstall npm -g
## apt remove nodejs
