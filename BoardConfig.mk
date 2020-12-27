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

include device/nvidia/foster/BoardConfig.mk

# Kernel
TARGET_KERNEL_SOURCE          := kernel/nvidia/shield
TARGET_KERNEL_CONFIG          := tegra21_android_defconfig
TARGET_KERNEL_RECOVERY_CONFIG :=
BOARD_KERNEL_IMAGE_NAME       := zImage

# Treble
BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := false
BOARD_VNDK_VERSION                     :=
PRODUCT_FULL_TREBLE_OVERRIDE           := false