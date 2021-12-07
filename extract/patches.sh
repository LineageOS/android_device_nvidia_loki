# Copyright (C) 2020 The LineageOS Project
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

function patch_r29_intrinsics() {
  sed -i 's/libm.so/libw.so/g' ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/egl/libEGL_tegra.so
  sed -i 's/libm.so/libw.so/g' ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/libcuda.so
  sed -i 's/libm.so/libw.so/g' ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/libglcore.so
  sed -i 's/libm.so/libw.so/g' ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/libnvglsi.so
  sed -i 's/libm.so/libw.so/g' ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/libnvidia-fatbinaryloader.so
  sed -i 's/libm.so/libw.so/g' ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/libnvidia-ptxjitcompiler.so
  sed -i 's/libm.so/libw.so/g' ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/libnvrmapi_tegra.so

  sed -i 's/libm.so/libw.so/g' ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib64/libglcore.so

  sed -i 's/__aeabi_ul2d/s_aeabi_ul2d/'                     ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/egl/libEGL_tegra.so
  sed -i 's/__aeabi_ul2f/s_aeabi_ul2f/'                     ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/egl/libEGL_tegra.so
  sed -i 's/__aeabi_uldivmod/s_aeabi_uldivmod/'             ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/egl/libEGL_tegra.so
  sed -i 's/__aeabi_unwind_cpp_pr0/s_aeabi_unwind_cpp_pr0/' ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/egl/libEGL_tegra.so
  sed -i 's/__aeabi_unwind_cpp_pr1/s_aeabi_unwind_cpp_pr1/' ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/egl/libEGL_tegra.so

  sed -i 's/__aeabi_d2lz/s_aeabi_d2lz/'                                       ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/libglcore.so
  sed -i 's/__aeabi_d2ulz/s_aeabi_d2ulz/'                                     ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/libglcore.so
  sed -i 's/__aeabi_f2lz/s_aeabi_f2lz/'                                       ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/libglcore.so
  sed -i 's/__aeabi_f2ulz/s_aeabi_f2ulz/'                                     ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/libglcore.so
  sed -i 's/__aeabi_l2d/s_aeabi_l2d/'                                         ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/libglcore.so
  sed -i 's/__aeabi_ul2d/s_aeabi_ul2d/'                                       ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/libglcore.so
  sed -i 's/__aeabi_l2f/s_aeabi_l2f/'                                         ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/libglcore.so
  sed -i 's/__aeabi_ul2f/s_aeabi_ul2f/'                                       ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/libglcore.so
  sed -i 's/__aeabi_ldivmod/s_aeabi_ldivmod/'                                 ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/libglcore.so
  sed -i 's/__aeabi_uldivmod/s_aeabi_uldivmod/'                               ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/libglcore.so
  sed -i 's/__aeabi_unwind_cpp_pr0/s_aeabi_unwind_cpp_pr0/'                   ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/libglcore.so
  sed -i 's/__aeabi_unwind_cpp_pr1/s_aeabi_unwind_cpp_pr1/'                   ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/libglcore.so
  sed -i 's/__gnu_unwind_frame/s_gnu_unwind_frame/'                           ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/libglcore.so
  sed -i 's/_Unwind_Complete/sUnwind_Complete/'                               ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/libglcore.so
  sed -i 's/_Unwind_DeleteException/sUnwind_DeleteException/'                 ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/libglcore.so
  sed -i 's/_Unwind_GetDataRelBase/sUnwind_GetDataRelBase/'                   ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/libglcore.so
  sed -i 's/_Unwind_GetLanguageSpecificData/sUnwind_GetLanguageSpecificData/' ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/libglcore.so
  sed -i 's/_Unwind_GetRegionStart/sUnwind_GetRegionStart/'                   ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/libglcore.so
  sed -i 's/_Unwind_GetTextRelBase/sUnwind_GetTextRelBase/'                   ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/libglcore.so
  sed -i 's/_Unwind_RaiseException/sUnwind_RaiseException/'                   ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/libglcore.so
  sed -i 's/_Unwind_Resume_or_Rethrow/sUnwind_Resume_or_Rethrow/'             ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/libglcore.so
  sed -i 's/_Unwind_Resume/sUnwind_Resume/'                                   ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/libglcore.so
  sed -i 's/_Unwind_VRS_Get/sUnwind_VRS_Get/'                                 ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/libglcore.so
  sed -i 's/_Unwind_VRS_Set/sUnwind_VRS_Set/'                                 ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/libglcore.so

  sed -i 's/_Unwind_DeleteException/sUnwind_DeleteException/'                 ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib64/libglcore.so
  sed -i 's/_Unwind_GetDataRelBase/sUnwind_GetDataRelBase/'                   ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib64/libglcore.so
  sed -i 's/_Unwind_GetLanguageSpecificData/sUnwind_GetLanguageSpecificData/' ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib64/libglcore.so
  sed -i 's/_Unwind_GetRegionStart/sUnwind_GetRegionStart/'                   ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib64/libglcore.so
  sed -i 's/_Unwind_GetTextRelBase/sUnwind_GetTextRelBase/'                   ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib64/libglcore.so
  sed -i 's/_Unwind_RaiseException/sUnwind_RaiseException/'                   ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib64/libglcore.so
  sed -i 's/_Unwind_Resume_or_Rethrow/sUnwind_Resume_or_Rethrow/'             ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib64/libglcore.so
  sed -i 's/_Unwind_Resume/sUnwind_Resume/'                                   ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib64/libglcore.so
  sed -i 's/_Unwind_SetGR/sUnwind_SetGR/'                                     ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib64/libglcore.so
  sed -i 's/_Unwind_SetIP/sUnwind_SetIP/'                                     ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib64/libglcore.so
  sed -i 's/_Unwind_GetIPInfo/sUnwind_GetIPInfo/'                             ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib64/libglcore.so

  sed -i 's/__aeabi_d2ulz/s_aeabi_d2ulz/'                   ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/libcuda.so
  sed -i 's/__aeabi_f2ulz/s_aeabi_f2ulz/'                   ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/libcuda.so
  sed -i 's/__aeabi_ul2d/s_aeabi_ul2d/'                     ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/libcuda.so
  sed -i 's/__aeabi_ul2f/s_aeabi_ul2f/'                     ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/libcuda.so
  sed -i 's/__aeabi_ldivmod/s_aeabi_ldivmod/'               ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/libcuda.so
  sed -i 's/__aeabi_uldivmod/s_aeabi_uldivmod/'             ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/libcuda.so
  sed -i 's/__aeabi_unwind_cpp_pr0/s_aeabi_unwind_cpp_pr0/' ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/libcuda.so
  sed -i 's/__aeabi_unwind_cpp_pr1/s_aeabi_unwind_cpp_pr1/' ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/libcuda.so

  sed -i 's/__aeabi_uldivmod/s_aeabi_uldivmod/'             ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/libnvglsi.so
  sed -i 's/__aeabi_unwind_cpp_pr0/s_aeabi_unwind_cpp_pr0/' ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/libnvglsi.so
  sed -i 's/__aeabi_unwind_cpp_pr1/s_aeabi_unwind_cpp_pr1/' ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/libnvglsi.so

  sed -i 's/__aeabi_l2d/s_aeabi_l2d/'                       ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/libnvidia-fatbinaryloader.so
  sed -i 's/__aeabi_ul2d/s_aeabi_ul2d/'                     ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/libnvidia-fatbinaryloader.so
  sed -i 's/__aeabi_uldivmod/s_aeabi_uldivmod/'             ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/libnvidia-fatbinaryloader.so
  sed -i 's/__aeabi_unwind_cpp_pr0/s_aeabi_unwind_cpp_pr0/' ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/libnvidia-fatbinaryloader.so
  sed -i 's/__aeabi_unwind_cpp_pr1/s_aeabi_unwind_cpp_pr1/' ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/libnvidia-fatbinaryloader.so

  sed -i 's/__aeabi_d2lz/s_aeabi_d2lz/'                     ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/libnvidia-ptxjitcompiler.so
  sed -i 's/__aeabi_d2ulz/s_aeabi_d2ulz/'                   ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/libnvidia-ptxjitcompiler.so
  sed -i 's/__aeabi_f2lz/s_aeabi_f2lz/'                     ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/libnvidia-ptxjitcompiler.so
  sed -i 's/__aeabi_f2ulz/s_aeabi_f2ulz/'                   ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/libnvidia-ptxjitcompiler.so
  sed -i 's/__aeabi_l2d/s_aeabi_l2d/'                       ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/libnvidia-ptxjitcompiler.so
  sed -i 's/__aeabi_ul2d/s_aeabi_ul2d/'                     ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/libnvidia-ptxjitcompiler.so
  sed -i 's/__aeabi_ldivmod/s_aeabi_ldivmod/'               ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/libnvidia-ptxjitcompiler.so
  sed -i 's/__aeabi_uldivmod/s_aeabi_uldivmod/'             ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/libnvidia-ptxjitcompiler.so
  sed -i 's/__aeabi_unwind_cpp_pr0/s_aeabi_unwind_cpp_pr0/' ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/libnvidia-ptxjitcompiler.so
  sed -i 's/__aeabi_unwind_cpp_pr1/s_aeabi_unwind_cpp_pr1/' ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/libnvidia-ptxjitcompiler.so

  sed -i 's/__aeabi_uldivmod/s_aeabi_uldivmod/'             ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/libnvrmapi_tegra.so
  sed -i 's/__aeabi_unwind_cpp_pr0/s_aeabi_unwind_cpp_pr0/' ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/libnvrmapi_tegra.so
  sed -i 's/__aeabi_unwind_cpp_pr1/s_aeabi_unwind_cpp_pr1/' ${LINEAGE_ROOT}/${OUTDIR}/loki/nvgpu/lib/libnvrmapi_tegra.so
}

patch_r29_intrinsics;
