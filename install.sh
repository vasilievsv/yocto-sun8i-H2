#!/bin/sh

git -C ./layers/bsp clone -b dunfell https://github.com/linux-sunxi/meta-sunxi
git -C ./layers clone -b dunfell git://git.yoctoproject.org/poky
git -C ./layers/third-party clone -b dunfell https://github.com/openembedded/meta-openembedded
git -C ./layers/third-party clone -b dunfell https://github.com/rauc/meta-rauc
git -C ./layers/third-party clone -b master https://github.com/rauc/meta-rauc-community
