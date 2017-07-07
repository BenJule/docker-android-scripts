#!/bin/bash
export USE_CCACHE=1
export CCACHE_DIR=$PWD/.ccache
export USER=$(whoami)
export CCACHE_COMPRESS=1

sudo apt-get install libffi-dev libssl-dev -y

export PATH=$PATH:/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin
#export PATH=$PATH:

#make mrproper
mkdir -p out
make O=./out defconfig msm8916_defconfig ARCH=arm64 CROSS_COMPILE=aarch64-linux-android-
make -j10 O=./out  ARCH=arm64 CROSS_COMPILE=aarch64-linux-android- KCFLAGS=-mno-android
make -j10 O=./out  ARCH=arm64 CROSS_COMPILE=aarch64-linux-android- KCFLAGS=-mno-android modules
make -j10 O=./out  ARCH=arm64 CROSS_COMPILE=aarch64-linux-android- KCFLAGS=-mno-android modules_install
