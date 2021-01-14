LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE               := rel29.rc
LOCAL_MODULE_CLASS         := ETC
LOCAL_SRC_FILES            := rel29.rc
LOCAL_VENDOR_MODULE        := true
LOCAL_MODULE_RELATIVE_PATH := init
include $(BUILD_PREBUILT)
