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
if [ "$1" = "this" ]; then
	echo "This Folder Build"
else
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
fi

if [ "$1" = "this" ]; then
if [ ! -f .config ]; then
	make $DEFCONFIG
fi
fi

# Build Start
if [ "$1" = "" ]; then
	make -j8 O=$FOLDER
else
	if [ "$1" = "this" ]; then
		if [ "$2" = "" ]; then
			make -j8
		else
			make -j8 $2 $3 $4
		fi
	else
		make -j8 O=$FOLDER $1 $2 $3
	fi
fi

# Copy zImage
if [ -f $FOLDER/arch/arm/boot/zImage ]; then
    cp -f $FOLDER/arch/arm/boot/zImage ./
fi

if [ -f arch/arm/boot/zImage ]; then
    cp -f arch/arm/boot/zImage ./
fi
