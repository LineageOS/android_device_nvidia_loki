LOCAL_PATH := $(call my-dir)
T124_SHIMS := $(LOCAL_PATH)/../../t124-common/shims

PROTOBUF_SYMLINK := $(TARGET_OUT_VENDOR)/lib/libprotobuf-cpp-lite-3.9.1.so
$(PROTOBUF_SYMLINK):
	$(hide) mkdir -p $(TARGET_OUT_VENDOR)/lib
	$(hide) ln -sf /system/lib/libprotobuf-cpp-lite.so $@

ALL_DEFAULT_INSTALLED_MODULES += $(PROTOBUF_SYMLINK)

include $(CLEAR_VARS)
LOCAL_MODULE           := libnvmm_shim
LOCAL_SRC_FILES        := $(T124_SHIMS)/nvmm_connect.cpp
LOCAL_MULTILIB         := 32
LOCAL_SHARED_LIBRARIES := libstagefright
LOCAL_VENDOR_MODULE    := true
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE           := libphs
LOCAL_SRC_FILES        := $(T124_SHIMS)/dummy.cpp
LOCAL_SHARED_LIBRARIES := libnvphs
LOCAL_VENDOR_MODULE    := true
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE           := libw
LOCAL_SRC_FILES_32     := intrinsics_shim.s
LOCAL_SRC_FILES_64     := intrinsics_shim_arm64.s
LOCAL_SHARED_LIBRARIES := libcutils
LOCAL_VENDOR_MODULE    := true
LOCAL_LDFLAGS_arm      += -Wl,--version-script,$(abspath $(LOCAL_PATH)/intrinsics_shim.arm.map)
include $(BUILD_SHARED_LIBRARY)
