# Copyright (C) 2021 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := $(call my-dir)
LOKI_NVGPU_PATH := ../../../../../vendor/nvidia/loki/nvgpu

include $(CLEAR_VARS)
LOCAL_MODULE               := gralloc.tegra
LOCAL_SRC_FILES_32         := $(LOKI_NVGPU_PATH)/lib/hw/gralloc.tegra.so
LOCAL_SRC_FILES_64         := $(LOKI_NVGPU_PATH)/lib64/hw/gralloc.tegra.so
LOCAL_MULTILIB             := both
LOCAL_MODULE_SUFFIX        := .so
LOCAL_MODULE_CLASS         := SHARED_LIBRARIES
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
LOCAL_VENDOR_MODULE        := true
LOCAL_MODULE_RELATIVE_PATH := hw
include $(BUILD_NVIDIA_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := hwcomposer.tegra
LOCAL_VINTF_FRAGMENTS      := android.hardware.graphics.composer@2.1-service.xml
LOCAL_SRC_FILES_64         := $(LOKI_NVGPU_PATH)/lib64/hw/hwcomposer.tegra.so
LOCAL_MULTILIB             := 64
LOCAL_MODULE_SUFFIX        := .so
LOCAL_MODULE_CLASS         := SHARED_LIBRARIES
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
LOCAL_VENDOR_MODULE        := true
LOCAL_MODULE_RELATIVE_PATH := hw
include $(BUILD_NVIDIA_PREBUILT)

REL29_VULKAN_SYMLINKS := \
  $(TARGET_OUT_VENDOR)/lib64/vulkan.tegra.so \
  $(TARGET_OUT_VENDOR)/lib/vulkan.tegra.so
$(REL29_VULKAN_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	$(hide) ln -sf ./hw/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(REL29_VULKAN_SYMLINKS)

include $(CLEAR_VARS)
LOCAL_MODULE               := vulkan.tegra
LOCAL_SRC_FILES_32         := $(LOKI_NVGPU_PATH)/lib/hw/vulkan.tegra.so
LOCAL_SRC_FILES_64         := $(LOKI_NVGPU_PATH)/lib64/hw/vulkan.tegra.so
LOCAL_MULTILIB             := both
LOCAL_MODULE_SUFFIX        := .so
LOCAL_MODULE_CLASS         := SHARED_LIBRARIES
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
LOCAL_VENDOR_MODULE        := true
LOCAL_MODULE_RELATIVE_PATH := hw
include $(BUILD_NVIDIA_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := libEGL_tegra
LOCAL_SRC_FILES_32         := $(LOKI_NVGPU_PATH)/lib/egl/libEGL_tegra.so
LOCAL_SRC_FILES_64         := $(LOKI_NVGPU_PATH)/lib64/egl/libEGL_tegra.so
LOCAL_MULTILIB             := both
LOCAL_MODULE_SUFFIX        := .so
LOCAL_MODULE_CLASS         := SHARED_LIBRARIES
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
LOCAL_VENDOR_MODULE        := true
LOCAL_MODULE_RELATIVE_PATH := egl
LOCAL_SHARED_LIBRARIES     := libnvos_shim
include $(BUILD_NVIDIA_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := libGLESv1_CM_tegra
LOCAL_SRC_FILES_32         := $(LOKI_NVGPU_PATH)/lib/egl/libGLESv1_CM_tegra.so
LOCAL_SRC_FILES_64         := $(LOKI_NVGPU_PATH)/lib64/egl/libGLESv1_CM_tegra.so
LOCAL_MULTILIB             := both
LOCAL_MODULE_SUFFIX        := .so
LOCAL_MODULE_CLASS         := SHARED_LIBRARIES
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
LOCAL_VENDOR_MODULE        := true
LOCAL_MODULE_RELATIVE_PATH := egl
include $(BUILD_NVIDIA_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := libGLESv2_tegra
LOCAL_SRC_FILES_32         := $(LOKI_NVGPU_PATH)/lib/egl/libGLESv2_tegra.so
LOCAL_SRC_FILES_64         := $(LOKI_NVGPU_PATH)/lib64/egl/libGLESv2_tegra.so
LOCAL_MULTILIB             := both
LOCAL_MODULE_SUFFIX        := .so
LOCAL_MODULE_CLASS         := SHARED_LIBRARIES
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
LOCAL_VENDOR_MODULE        := true
LOCAL_MODULE_RELATIVE_PATH := egl
include $(BUILD_NVIDIA_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := libglcore
LOCAL_SRC_FILES_32         := $(LOKI_NVGPU_PATH)/lib/libglcore.so
LOCAL_SRC_FILES_64         := $(LOKI_NVGPU_PATH)/lib64/libglcore.so
LOCAL_MULTILIB             := both
LOCAL_MODULE_SUFFIX        := .so
LOCAL_MODULE_CLASS         := SHARED_LIBRARIES
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
LOCAL_VENDOR_MODULE        := true
LOCAL_REQUIRED_MODULES     := com.nvidia.nvsi.xml
LOCAL_SHARED_LIBRARIES     := libutilscallstack
include $(BUILD_NVIDIA_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := libnvblit
LOCAL_SRC_FILES_32         := $(LOKI_NVGPU_PATH)/lib/libnvblit.so
LOCAL_SRC_FILES_64         := $(LOKI_NVGPU_PATH)/lib64/libnvblit.so
LOCAL_MULTILIB             := both
LOCAL_MODULE_SUFFIX        := .so
LOCAL_MODULE_CLASS         := SHARED_LIBRARIES
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
LOCAL_VENDOR_MODULE        := true
include $(BUILD_NVIDIA_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := libnvddk_2d_v2
LOCAL_SRC_FILES_32         := $(LOKI_NVGPU_PATH)/lib/libnvddk_2d_v2.so
LOCAL_SRC_FILES_64         := $(LOKI_NVGPU_PATH)/lib64/libnvddk_2d_v2.so
LOCAL_MULTILIB             := both
LOCAL_MODULE_SUFFIX        := .so
LOCAL_MODULE_CLASS         := SHARED_LIBRARIES
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
LOCAL_VENDOR_MODULE        := true
include $(BUILD_NVIDIA_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := libnvddk_vic
LOCAL_SRC_FILES_32         := $(LOKI_NVGPU_PATH)/lib/libnvddk_vic.so
LOCAL_SRC_FILES_64         := $(LOKI_NVGPU_PATH)/lib64/libnvddk_vic.so
LOCAL_MULTILIB             := both
LOCAL_MODULE_SUFFIX        := .so
LOCAL_MODULE_CLASS         := SHARED_LIBRARIES
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
LOCAL_VENDOR_MODULE        := true
include $(BUILD_NVIDIA_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := libnvglsi
LOCAL_SRC_FILES_32         := $(LOKI_NVGPU_PATH)/lib/libnvglsi.so
LOCAL_SRC_FILES_64         := $(LOKI_NVGPU_PATH)/lib64/libnvglsi.so
LOCAL_MULTILIB             := both
LOCAL_MODULE_SUFFIX        := .so
LOCAL_MODULE_CLASS         := SHARED_LIBRARIES
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
LOCAL_VENDOR_MODULE        := true
LOCAL_REQUIRED_MODULES     := libnvwsi
include $(BUILD_NVIDIA_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := libnvgr
LOCAL_SRC_FILES_32         := $(LOKI_NVGPU_PATH)/lib/libnvgr.so
LOCAL_SRC_FILES_64         := $(LOKI_NVGPU_PATH)/lib64/libnvgr.so
LOCAL_MULTILIB             := both
LOCAL_MODULE_SUFFIX        := .so
LOCAL_MODULE_CLASS         := SHARED_LIBRARIES
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
LOCAL_VENDOR_MODULE        := true
include $(BUILD_NVIDIA_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := libnvhwc_service
LOCAL_SRC_FILES_32         := $(LOKI_NVGPU_PATH)/lib/libnvhwc_service.so
LOCAL_SRC_FILES_64         := $(LOKI_NVGPU_PATH)/lib64/libnvhwc_service.so
LOCAL_MULTILIB             := both
LOCAL_MODULE_SUFFIX        := .so
LOCAL_MODULE_CLASS         := SHARED_LIBRARIES
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
LOCAL_VENDOR_MODULE        := true
LOCAL_REQUIRED_MODULES     := libcuda
include $(BUILD_NVIDIA_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := libnvrmapi_tegra
LOCAL_SRC_FILES_32         := $(LOKI_NVGPU_PATH)/lib/libnvrmapi_tegra.so
LOCAL_SRC_FILES_64         := $(LOKI_NVGPU_PATH)/lib64/libnvrmapi_tegra.so
LOCAL_MULTILIB             := both
LOCAL_MODULE_SUFFIX        := .so
LOCAL_MODULE_CLASS         := SHARED_LIBRARIES
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
LOCAL_VENDOR_MODULE        := true
include $(BUILD_NVIDIA_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := libnvrm_graphics
LOCAL_SRC_FILES_32         := $(LOKI_NVGPU_PATH)/lib/libnvrm_graphics.so
LOCAL_SRC_FILES_64         := $(LOKI_NVGPU_PATH)/lib64/libnvrm_graphics.so
LOCAL_MULTILIB             := both
LOCAL_MODULE_SUFFIX        := .so
LOCAL_MODULE_CLASS         := SHARED_LIBRARIES
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
LOCAL_VENDOR_MODULE        := true
include $(BUILD_NVIDIA_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := libnvrm_gpu
LOCAL_SRC_FILES_32         := $(LOKI_NVGPU_PATH)/lib/libnvrm_gpu.so
LOCAL_SRC_FILES_64         := $(LOKI_NVGPU_PATH)/lib64/libnvrm_gpu.so
LOCAL_MULTILIB             := both
LOCAL_MODULE_SUFFIX        := .so
LOCAL_MODULE_CLASS         := SHARED_LIBRARIES
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
LOCAL_VENDOR_MODULE        := true
include $(BUILD_NVIDIA_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := libnvrm
LOCAL_SRC_FILES_32         := $(LOKI_NVGPU_PATH)/lib/libnvrm.so
LOCAL_SRC_FILES_64         := $(LOKI_NVGPU_PATH)/lib64/libnvrm.so
LOCAL_MULTILIB             := both
LOCAL_MODULE_SUFFIX        := .so
LOCAL_MODULE_CLASS         := SHARED_LIBRARIES
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
LOCAL_VENDOR_MODULE        := true
include $(BUILD_NVIDIA_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := libnvwsi
LOCAL_SRC_FILES_32         := $(LOKI_NVGPU_PATH)/lib/libnvwsi.so
LOCAL_SRC_FILES_64         := $(LOKI_NVGPU_PATH)/lib64/libnvwsi.so
LOCAL_MULTILIB             := both
LOCAL_MODULE_SUFFIX        := .so
LOCAL_MODULE_CLASS         := SHARED_LIBRARIES
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
LOCAL_VENDOR_MODULE        := true
include $(BUILD_NVIDIA_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := libcuda
LOCAL_SRC_FILES_32         := $(LOKI_NVGPU_PATH)/lib/libcuda.so
LOCAL_SRC_FILES_64         := $(LOKI_NVGPU_PATH)/lib64/libcuda.so
LOCAL_MULTILIB             := both
LOCAL_MODULE_SUFFIX        := .so
LOCAL_MODULE_CLASS         := SHARED_LIBRARIES
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
LOCAL_VENDOR_MODULE        := true
include $(BUILD_NVIDIA_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := libnvcolorutil
LOCAL_SRC_FILES_32         := $(LOKI_NVGPU_PATH)/lib/libnvcolorutil.so
LOCAL_SRC_FILES_64         := $(LOKI_NVGPU_PATH)/lib64/libnvcolorutil.so
LOCAL_MULTILIB             := both
LOCAL_MODULE_SUFFIX        := .so
LOCAL_MODULE_CLASS         := SHARED_LIBRARIES
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
LOCAL_VENDOR_MODULE        := true
include $(BUILD_NVIDIA_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := libnvdc
LOCAL_SRC_FILES_32         := $(LOKI_NVGPU_PATH)/lib/libnvdc.so
LOCAL_SRC_FILES_64         := $(LOKI_NVGPU_PATH)/lib64/libnvdc.so
LOCAL_MULTILIB             := both
LOCAL_MODULE_SUFFIX        := .so
LOCAL_MODULE_CLASS         := SHARED_LIBRARIES
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
LOCAL_VENDOR_MODULE        := true
include $(BUILD_NVIDIA_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := libnvimp
LOCAL_SRC_FILES_32         := $(LOKI_NVGPU_PATH)/lib/libnvimp.so
LOCAL_SRC_FILES_64         := $(LOKI_NVGPU_PATH)/lib64/libnvimp.so
LOCAL_MULTILIB             := both
LOCAL_MODULE_SUFFIX        := .so
LOCAL_MODULE_CLASS         := SHARED_LIBRARIES
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
LOCAL_VENDOR_MODULE        := true
include $(BUILD_NVIDIA_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := libnvidia-fatbinaryloader
LOCAL_SRC_FILES_32         := $(LOKI_NVGPU_PATH)/lib/libnvidia-fatbinaryloader.so
LOCAL_SRC_FILES_64         := $(LOKI_NVGPU_PATH)/lib64/libnvidia-fatbinaryloader.so
LOCAL_MULTILIB             := both
LOCAL_MODULE_SUFFIX        := .so
LOCAL_MODULE_CLASS         := SHARED_LIBRARIES
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
LOCAL_VENDOR_MODULE        := true
LOCAL_REQUIRED_MODULES     := libnvidia-ptxjitcompiler
include $(BUILD_NVIDIA_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := libnvidia-ptxjitcompiler
LOCAL_SRC_FILES_32         := $(LOKI_NVGPU_PATH)/lib/libnvidia-ptxjitcompiler.so
LOCAL_SRC_FILES_64         := $(LOKI_NVGPU_PATH)/lib64/libnvidia-ptxjitcompiler.so
LOCAL_MULTILIB             := both
LOCAL_MODULE_SUFFIX        := .so
LOCAL_MODULE_CLASS         := SHARED_LIBRARIES
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
LOCAL_VENDOR_MODULE        := true
include $(BUILD_NVIDIA_PREBUILT)
