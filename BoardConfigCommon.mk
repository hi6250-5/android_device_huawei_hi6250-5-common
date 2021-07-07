#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

## Common Path
COMMON_PATH := device/huawei/hi6250-5-common

# Arch
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

# Binder
TARGET_USES_64_BIT_BINDER := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := hi6250
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true

# Graphics
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

# HIDL
DEVICE_MANIFEST_FILE += $(COMMON_PATH)/manifest.xml

# Kernel
BOARD_KERNEL_BASE := 0x00478000
BOARD_KERNEL_CMDLINE := loglevel=4 coherent_pool=512K page_tracker=on slub_min_objects=12 unmovable_isolate1=2:192M,3:224M,4:256M androidboot.selinux=enforcing
BOARD_KERNEL_IMAGE_NAME := Image.gz
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x07b88000 --second_offset 0x00e88000 --tags_offset 0x07588000

# Kernel Source
TARGET_KERNEL_CONFIG := merge_hi6250_defconfig
TARGET_KERNEL_SOURCE := kernel/huawei/hi6250

# Partitions
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 4096 # blockdev --getbsz /dev/block/mmcblk0

# Platform
TARGET_BOARD_PLATFORM := hi6250

# Props
TARGET_SYSTEM_PROP += $(COMMON_PATH)/system.prop

# Recovery
TARGET_RECOVERY_FSTAB := $(COMMON_PATH)/rootdir/etc/fstab.hi6250
TARGET_RECOVERY_PIXEL_FORMAT := "ABGR_8888"

# Root
BOARD_ROOT_EXTRA_FOLDERS += \
    3rdmodem \
    3rdmodemnvm \
    3rdmodemnvmbkp \
    cust \
    mnvm2:0 \
    modem_fw \
    modem_log \
    sec_storage \
    splash2 \
    version

# SELinux
BOARD_SEPOLICY_DIRS += $(COMMON_PATH)/sepolicy/vendor

# Vendor
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor
