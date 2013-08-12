#!/bin/bash

# git update
if [ -d .git ]; then
    echo "Check git update list"
    git pull
fi

#######################################
#    android_kernel_pantech_ef47s     #
#######################################
clear
echo ""
echo ""
echo "--------------------------"
echo "    SHV-E210K Kernel"
echo "--------------------------"
echo ""

# setting
FOLDER=../build_SHV-E210K
zImage="$FOLDER/arch/arm/boot/zImage"
DEFCONFIG=c1ktt_00_defconfig

# Make folder
if [ ! -d $FOLDER ]; then
	mkdir -p $FOLDER
	chmod 755 $FOLDER
fi

# Load defconfig
if [ ! -f $FOLDER/.config ]; then
	echo "--------------------------"
	echo "     load defconfig"
	echo "--------------------------"
	echo ""
	make O=$FOLDER $DEFCONFIG
fi

# Build Start
if [ "$1" = "" ]; then
	make -j8 O=$FOLDER
else
	make -j8 O=$FOLDER $1 $2 $3
fi

# Copy zImage
if [ -f $FOLDER/arch/arm/boot/zImage ]; then
    cp -f $FOLDER/arch/arm/boot/zImage ./
fi
