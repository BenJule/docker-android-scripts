#!/bin/bash
export USE_CCACHE=1
export CCACHE_DIR=$PWD/.ccache
export USER=$(whoami)
source build/envsetup.sh
export CCACHE_COMPRESS=1

lunch msm8916_64-userdebug
prebuilts/misc/linux-x86/ccache/ccache -M 50G


while [ 1 ]; do 
	#make clobber
	make 
	#echo Hello
done
