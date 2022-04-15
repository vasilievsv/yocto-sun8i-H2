#!/bin/sh

# setup ubuntu environment
sudo apt-get install -Y gawk wget git-core diffstat unzip texinfo gcc-multilib build-essential chrpath \
socat cpio python python3 python3-pip python3-pexpect xz-utils debianutils iputils-ping libsdl1.2-dev xterm

git -C ./layers/bsp clone -b dunfell https://github.com/linux-sunxi/meta-sunxi
git -C ./layers clone -b dunfell git://git.yoctoproject.org/poky
git -C ./layers/third-party clone -b dunfell https://github.com/openembedded/meta-openembedded
git -C ./layers/third-party clone -b dunfell https://github.com/rauc/meta-rauc
git -C ./layers/third-party clone -b master https://github.com/rauc/meta-rauc-community
