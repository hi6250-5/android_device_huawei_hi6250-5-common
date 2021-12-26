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

include $(CLEAR_VARS)
LOCAL_SRC_FILES := log_shim.cpp
LOCAL_SHARED_LIBRARIES := liblog
LOCAL_MODULE := libshim_log
LOCAL_VENDOR_MODULE := true
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := GraphicBuffer.cpp
LOCAL_SHARED_LIBRARIES := libui libgui libutils libcutils
LOCAL_MODULE := libshim_ui
LOCAL_VENDOR_MODULE := true
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := SensorManager.cpp ISensorServer.cpp
LOCAL_SHARED_LIBRARIES := liblog libcutils libgui libbinder libutils libsensor libui libnativeloader libEGL libGLESv2 libsync libbase
LOCAL_C_INCLUDES := $(LOCAL_PATH)/include
LOCAL_MODULE := libshim_sensors
LOCAL_VENDOR_MODULE := true
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := memtrack_shim.cpp
LOCAL_SHARED_LIBRARIES := libhardware libmemtrack liblog
LOCAL_MODULE := libshim_memtrack
LOCAL_VENDOR_MODULE := true
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := renderer_shim.cpp
LOCAL_C_INCLUDES := external/skia/src/core external/skia/include/private
LOCAL_SHARED_LIBRARIES := libutils libhwui libskia libui libandroidfw
LOCAL_MODULE := libshim_renderer
LOCAL_VENDOR_MODULE := true
include $(BUILD_SHARED_LIBRARY)
