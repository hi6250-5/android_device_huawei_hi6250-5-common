#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := icu_shim.cpp
LOCAL_SHARED_LIBRARIES := liblog libicuuc libssl libcrypto
LOCAL_MODULE := libshim_icu
LOCAL_VENDOR_MODULE := true
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := audio_shim.cpp
LOCAL_MULTILIB := 32
LOCAL_MODULE := libshim_audio
LOCAL_VENDOR_MODULE := true
include $(BUILD_SHARED_LIBRARY)
