#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := healthd_board_hi6250.cpp
LOCAL_MODULE := libhealthd.hi6250
LOCAL_CFLAGS := -Werror
LOCAL_C_INCLUDES := system/core/healthd/include/healthd
LOCAL_SHARED_LIBRARIES := libbase
include $(BUILD_STATIC_LIBRARY)
