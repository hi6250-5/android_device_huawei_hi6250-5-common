#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

## Common Path
COMMON_PATH := device/huawei/hi6250-5-common

## Inherit common vendor blobs
$(call inherit-product, vendor/huawei/hi6250-5-common/hi6250-5-common-vendor.mk)

# Init
PRODUCT_PACKAGES += \
    fstab.hi6250 \
    init.audio.rc \
    init.balong_modem.rc \
    init.charger.rc \
    init.chip.charger.rc \
    init.connectivity.bcm43455.rc \
    init.connectivity.gps.rc \
    init.connectivity.hisi.rc \
    init.connectivity.rc \
    init.device.rc \
    init.extmodem.rc \
    init.hi6250.rc \
    init.hisi.rc \
    init.hisi.usb.rc \
    init.manufacture.rc \
    init.platform.rc \
    init.post-fs-data.rc \
    init.protocol.rc \
    init.tee.rc \
    ueventd.hi6250.rc

# Ramdisk
PRODUCT_PACKAGES += \
    bfgx_and_wifi_cfg \
    bfgx_cfg \
    CPU_RAM_SCHED.bin \
    CPU_RAM_WBS.bin \
    cr4_asic.bin \
    cr4_regmem.bin \
    cr4_regmem_u1.bin \
    ram_reg_test_cfg \
    wifi_cfg

# Recovery
PRODUCT_PACKAGES += \
    init.recovery.hi6250.rc
