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
#

""" Custom OTA commands for loki_e devices """

import common
import re
import os

APP_PART     = '/dev/block/by-name/APP'
DTB_PART     = '/dev/block/by-name/DTB'
VENDOR_PART  = '/dev/block/by-name/vendor'

PUBLIC_KEY_PATH     = '/sys/devices/platform/tegra-fuse/public_key'
FUSED_PATH          = '/sys/devices/platform/tegra-fuse/odm_production_mode'
DTSFILENAME_PATH    = '/proc/device-tree/nvidia,dtsfilename'

MODE_UNFUSED        = '0x00000000\n'
MODE_FUSED          = '0x00000001\n'

LOKI_E_PUBLIC_KEY   = '0x4261f1714a7d71c7e810c9b33769878128cc54ae3c5736646496104b643aed09\n'
LOKI_E_BL_VERSION   = '24.00.2015.42-t210-39c6cadc'

def FullOTA_PostValidate(info):
  if 'INSTALL/bin/resize2fs_static' in info.input_zip.namelist():
    info.script.AppendExtra('run_program("/tmp/install/bin/resize2fs_static", "' + APP_PART + '");');
    info.script.AppendExtra('run_program("/tmp/install/bin/resize2fs_static", "' + VENDOR_PART + '");');

def FullOTA_Assertions(info):
  AddBootloaderFlash(info, info.input_zip)

def IncrementalOTA_Assertions(info):
  FullOTA_Assertions(info)

def AddBootloaderFlash(info, input_zip):
  """ If device is fused """
  info.script.AppendExtra('ifelse(')
  info.script.AppendExtra('  read_file("' + FUSED_PATH + '") == "' + MODE_FUSED + '",')
  info.script.AppendExtra('  (')

  """ Fused loki_e """
  info.script.AppendExtra('    ifelse(')
  info.script.AppendExtra('      getprop("ro.hardware") == "loki_e_base" || getprop("ro.hardware") == "loki_e_lte" || getprop("ro.hardware") == "loki_e_wifi",')
  info.script.AppendExtra('      (')
  info.script.AppendExtra('        ifelse(')
  info.script.AppendExtra('          getprop("ro.bootloader") == "' + LOKI_E_BL_VERSION + '",')
  info.script.AppendExtra('          (')
  info.script.AppendExtra('            ui_print("Correct bootloader already installed for fused " + getprop(ro.hardware));')
  info.script.AppendExtra('          ),')
  info.script.AppendExtra('          ifelse(')
  info.script.AppendExtra('            read_file("' + PUBLIC_KEY_PATH + '") == "' + LOKI_E_PUBLIC_KEY + '",')
  info.script.AppendExtra('            (')
  info.script.AppendExtra('              ui_print("Bootloader update for fused " + getprop(ro.hardware) + " not available");')
  info.script.AppendExtra('              abort();')
  info.script.AppendExtra('            ),')
  info.script.AppendExtra('            (')
  info.script.AppendExtra('              ui_print("Unknown public key " + read_file("' + PUBLIC_KEY_PATH + '") + " for " + getprop("ro.hardware") + " detected.");')
  info.script.AppendExtra('              ui_print("This is not supported. Please report to LineageOS Maintainer.");')
  info.script.AppendExtra('              abort();')
  info.script.AppendExtra('            )')
  info.script.AppendExtra('          )')
  info.script.AppendExtra('        );')
  info.script.AppendExtra('        package_extract_file("install/" + tegra_get_dtbname(), "' + DTB_PART + '");')
  info.script.AppendExtra('      )')
  info.script.AppendExtra('    );')

  info.script.AppendExtra('  ),')

  """ If not fused """
  info.script.AppendExtra('  (')

  """ Unfused loki_e """
  info.script.AppendExtra('    ifelse(')
  info.script.AppendExtra('      getprop("ro.hardware") == "loki_e_base" || getprop("ro.hardware") == "loki_e_lte" || getprop("ro.hardware") == "loki_e_wifi",')
  info.script.AppendExtra('      (')
  info.script.AppendExtra('        ifelse(')
  info.script.AppendExtra('          getprop("ro.bootloader") == "' + LOKI_E_BL_VERSION + '",')
  info.script.AppendExtra('          (')
  info.script.AppendExtra('            ui_print("Correct bootloader already installed for unfused " + getprop(ro.hardware));')
  info.script.AppendExtra('          ),')
  info.script.AppendExtra('          (')
  info.script.AppendExtra('            ui_print("Bootloader update for unfused " + getprop(ro.hardware) + " not available");')
  info.script.AppendExtra('            abort();')
  info.script.AppendExtra('          )')
  info.script.AppendExtra('        );')
  info.script.AppendExtra('        package_extract_file("install/" + tegra_get_dtbname(), "' + DTB_PART + '");')
  info.script.AppendExtra('      )')
  info.script.AppendExtra('    );')

  info.script.AppendExtra('  )')
  info.script.AppendExtra(');')
