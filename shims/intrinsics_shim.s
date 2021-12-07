.extern __aeabi_ldivmod,__aeabi_uldivmod,__aeabi_d2lz,__aeabi_d2ulz,__aeabi_l2d,__aeabi_ul2d,__aeabi_f2lz,__aeabi_f2ulz,__aeabi_l2f,__aeabi_ul2f,__aeabi_unwind_cpp_pr0,__aeabi_unwind_cpp_pr1,_Unwind_Complete,_Unwind_DeleteException,_Unwind_GetDataRelBase,_Unwind_GetLanguageSpecificData,_Unwind_GetRegionStart,_Unwind_GetTextRelBase,_Unwind_RaiseException,_Unwind_Resume,_Unwind_Resume_or_Rethrow,_Unwind_VRS_Get,_Unwind_VRS_Set,__gnu_unwind_frame
.text
.thumb

.global s_aeabi_ldivmod
.type s_aeabi_ldivmod,%function
.thumb_func
s_aeabi_ldivmod:
    b __aeabi_ldivmod

.global s_aeabi_uldivmod
.type s_aeabi_uldivmod,%function
.thumb_func
s_aeabi_uldivmod:
    b __aeabi_uldivmod

.global s_aeabi_d2lz
.type s_aeabi_d2lz,%function
.thumb_func
s_aeabi_d2lz:
    b __aeabi_d2lz

.global s_aeabi_d2ulz
.type s_aeabi_d2ulz,%function
.thumb_func
s_aeabi_d2ulz:
    b __aeabi_d2ulz

.global s_aeabi_l2d
.type s_aeabi_l2d,%function
.thumb_func
s_aeabi_l2d:
    b __aeabi_l2d

.global s_aeabi_ul2d
.type s_aeabi_ul2d,%function
.thumb_func
s_aeabi_ul2d:
    b __aeabi_ul2d

.global s_aeabi_f2lz
.type s_aeabi_f2lz,%function
.thumb_func
s_aeabi_f2lz:
    b __aeabi_f2lz

.global s_aeabi_f2ulz
.type s_aeabi_f2ulz,%function
.thumb_func
s_aeabi_f2ulz:
    b __aeabi_f2ulz

.global s_aeabi_l2f
.type s_aeabi_l2f,%function
.thumb_func
s_aeabi_l2f:
    b __aeabi_l2f

.global s_aeabi_ul2f
.type s_aeabi_ul2f,%function
.thumb_func
s_aeabi_ul2f:
    b __aeabi_ul2f

.global s_aeabi_unwind_cpp_pr0
.type s_aeabi_unwind_cpp_pr0,%function
.thumb_func
s_aeabi_unwind_cpp_pr0:
    b __aeabi_unwind_cpp_pr0

.global s_aeabi_unwind_cpp_pr1
.type s_aeabi_unwind_cpp_pr1,%function
.thumb_func
s_aeabi_unwind_cpp_pr1:
    b __aeabi_unwind_cpp_pr1

.global sUnwind_Complete
.type sUnwind_Complete,%function
.thumb_func
sUnwind_Complete:
    b _Unwind_Complete

.global sUnwind_DeleteException
.type sUnwind_DeleteException,%function
.thumb_func
sUnwind_DeleteException:
    b _Unwind_DeleteException

.global sUnwind_GetDataRelBase
.type sUnwind_GetDataRelBase,%function
.thumb_func
sUnwind_GetDataRelBase:
    b _Unwind_GetDataRelBase

.global sUnwind_GetLanguageSpecificData
.type sUnwind_GetLanguageSpecificData,%function
.thumb_func
sUnwind_GetLanguageSpecificData:
    b _Unwind_GetLanguageSpecificData

.global sUnwind_GetRegionStart
.type sUnwind_GetRegionStart,%function
.thumb_func
sUnwind_GetRegionStart:
    b _Unwind_GetRegionStart

.global sUnwind_GetTextRelBase
.type sUnwind_GetTextRelBase,%function
.thumb_func
sUnwind_GetTextRelBase:
    b _Unwind_GetTextRelBase

.global sUnwind_RaiseException
.type sUnwind_RaiseException,%function
.thumb_func
sUnwind_RaiseException:
    b _Unwind_RaiseException

.global sUnwind_Resume
.type sUnwind_Resume,%function
.thumb_func
sUnwind_Resume:
    b _Unwind_Resume

.global sUnwind_Resume_or_Rethrow
.type sUnwind_Resume_or_Rethrow,%function
.thumb_func
sUnwind_Resume_or_Rethrow:
    b _Unwind_Resume_or_Rethrow

.global sUnwind_VRS_Get
.type sUnwind_VRS_Get,%function
.thumb_func
sUnwind_VRS_Get:
    b _Unwind_VRS_Get

.global sUnwind_VRS_Set
.type sUnwind_VRS_Set,%function
.thumb_func
sUnwind_VRS_Set:
    b _Unwind_VRS_Set

.global s_gnu_unwind_frame
.type s_gnu_unwind_frame,%function
.thumb_func
s_gnu_unwind_frame:
    b __gnu_unwind_frame
