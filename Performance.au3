#include-once

; #INDEX# =======================================================================================================================
; Title .........: Performance
; AutoIt Version : 3.3.8.1
; Language ......: English
; Description ...: Functions for organize and monitor performance of a computer.
; Author(s) .....: onemoretime
; source of inspiration : 	Performance Functions
;							ms-help://MS.VSCC.v90/MS.MSDNQTR.v90.en/wmisdk/wmi/wmi_tasks__performance_monitoring.htm
;							ms-help://MS.VSCC.v90/MS.MSDNQTR.v90.en/wmisdk/wmi/win32_perfformatteddata_tcpip_networkinterface.htm
;							ms-help://MS.VSCC.v90/MS.MSDNQTR.v90.en/wmisdk/wmi/obtaining_statistical_performance_data.htm
; ===============================================================================================================================

; #NO_DOC_FUNCTION# =============================================================================================================
; Not documented - function(s) no longer needed, will be worked out of the file at a later date
;_Function
; ===============================================================================================================================

; #CURRENT# =====================================================================================================================
;_Function
; ===============================================================================================================================

; #INTERNAL_USE_ONLY# ===========================================================================================================
;__Function
; ===============================================================================================================================

; #FUNCTION# ;===============================================================================
;
; Name...........: _PerfGetProcessLoad
; Description ...: Returns the process load
; Syntax.........: _PerfGetProcessLoad($sProcessName)
; Parameters ....: $sProcessName - string containing the name of the process to be monitored
; Return values .: float value
; Author ........: onemoretime
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........;
; Example .......; Yes
;
; ;==========================================================================================
Func _PerfGetProcessLoad($sProcessName)
	Local $oWMIService = ObjGet("winmgmts:" & "{impersonationLevel=impersonate}!\\" & $strComputer & "\root\cimv2")
	If IsObj($oWMIService) Then

	Local $PerfProcess = $oWMIService.Get("Win32_PerfFormattedData_PerfProc_Process.Name='" & $sProcessName & "'")
	return $PerfProcess
EndFunc



