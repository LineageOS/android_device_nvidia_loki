.extern _Unwind_DeleteException,_Unwind_GetDataRelBase,_Unwind_GetLanguageSpecificData,_Unwind_GetRegionStart,_Unwind_GetTextRelBase,_Unwind_RaiseException,_Unwind_Resume,_Unwind_Resume_or_Rethrow,_Unwind_SetGR,_Unwind_SetIP,_Unwind_GetIPInfo
.text

.global sUnwind_DeleteException
.type sUnwind_DeleteException,%function
sUnwind_DeleteException:
    b _Unwind_DeleteException

.global sUnwind_GetDataRelBase
.type sUnwind_GetDataRelBase,%function
sUnwind_GetDataRelBase:
    b _Unwind_GetDataRelBase

.global sUnwind_GetLanguageSpecificData
.type sUnwind_GetLanguageSpecificData,%function
sUnwind_GetLanguageSpecificData:
    b _Unwind_GetLanguageSpecificData

.global sUnwind_GetRegionStart
.type sUnwind_GetRegionStart,%function
sUnwind_GetRegionStart:
    b _Unwind_GetRegionStart

.global sUnwind_GetTextRelBase
.type sUnwind_GetTextRelBase,%function
sUnwind_GetTextRelBase:
    b _Unwind_GetTextRelBase

.global sUnwind_RaiseException
.type sUnwind_RaiseException,%function
sUnwind_RaiseException:
    b _Unwind_RaiseException

.global sUnwind_Resume
.type sUnwind_Resume,%function
sUnwind_Resume:
    b _Unwind_Resume

.global sUnwind_Resume_or_Rethrow
.type sUnwind_Resume_or_Rethrow,%function
sUnwind_Resume_or_Rethrow:
    b _Unwind_Resume_or_Rethrow

.global sUnwind_SetGR
.type sUnwind_SetGR,%function
sUnwind_SetGR:
    b _Unwind_SetGR

.global sUnwind_SetIP
.type sUnwind_SetIP,%function
sUnwind_SetIP:
    b _Unwind_SetIP

.global sUnwind_GetIPInfo
.type sUnwind_GetIPInfo,%function
sUnwind_GetIPInfo:
    b _Unwind_GetIPInfo
