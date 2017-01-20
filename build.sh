
#!/bin/bash
#export CONFIG_DEBUG_SECTION_MISMATCH=y
export KBUILD_BUILD_USER=oleg.svs
export GCC_VERSION="gcc version 5.3.1 20160412 (linaro) (GCC)"
export KBUILD_BUILD_HOST=SRT

echo "Make dirs >>>"

mkdir tools/tools

echo "Export toolchains >>>"

#export ARCH=arm CROSS_COMPILE=../*linaro*/bin/arm-linux-gnu-
export ARCH=arm CROSS_COMPILE=../*5.2*/bin/arm-cortex-linux-gnueabi-
echo "Make defconfig >>>"

make X5PRO_6735m_defconfig

echo "Start build >>>"

	time make -j16

echo "======================"
