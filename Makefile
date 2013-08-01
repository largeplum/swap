PRIVATE_SRC_PATH := /media/Data/src/kernels/aosp
TARGET_ARCH := arm
PRIVATE_TOPDIR := /media/Data/src/kernels/aospout
PRIVATE_KBUILD_OUT := out

define kernel-make
$(MAKE) -C $(PRIVATE_SRC_PATH) \
	ARCH=$(TARGET_ARCH) \
	CROSS_COMPILE=/media/Data/src/ti/4AI.1.5/prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/arm-eabi- \
	O=$(PRIVATE_TOPDIR)/$(PRIVATE_KBUILD_OUT) \
	$(if $(SHOW_COMMANDS),V=1)
endef

def:
	$(kernel-make)

# # help:
# # 	$(kernel-make) help

# defconfig:
# 	$(kernel-make) defconfig

# menuconfig:
# 	$(kernel-make) menuconfig

%:
	$(kernel-make) $@