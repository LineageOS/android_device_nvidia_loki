#
# Copyright (C) 2022 The LineageOS Project
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
#

ifeq ($(TARGET_PREBUILT_KERNEL),)
INSTALLED_KERNEL_TARGET := $(PRODUCT_OUT)/kernel

DTB_TARGETS := tegra210-loki-e-p2530-0030-e01-00.dtb \
               tegra210-loki-e-p2530-0030-e02-00.dtb \
               tegra210-loki-e-p2530-0030-e03-00.dtb \
               tegra210-loki-e-p2530-0031-e01-00.dtb \
               tegra210-loki-e-p2530-0031-e02-00.dtb \
               tegra210-loki-e-p2530-0031-e03-00.dtb
INSTALLED_DTB_TARGETS := $(DTB_TARGETS:%=$(PRODUCT_OUT)/install/%)
$(INSTALLED_DTB_TARGETS): $(INSTALLED_KERNEL_TARGET) | $(ACP)
	echo -e ${CL_GRN}"Copying individual DTBs"${CL_RST}
	@mkdir -p $(PRODUCT_OUT)/install
	cp $(@F:%=$(KERNEL_OUT)/arch/arm64/boot/dts/%) $(PRODUCT_OUT)/install/

ALL_DEFAULT_INSTALLED_MODULES += $(INSTALLED_DTB_TARGETS)
endif

EKS_DAT_SYMLINK := $(TARGET_OUT_VENDOR)/app/eks2/eks2.dat
$(EKS_DAT_SYMLINK): $(LOCAL_INSTALLED_MODULE)
	$(hide) ln -sf /data/vendor/eks2/eks2.dat $@

ALL_DEFAULT_INSTALLED_MODULES += $(EKS_DAT_SYMLINK)
