#include "Performance.au3"

; Return the load for the "Idle" Process
$myPerf =  _PerfGetProcessLoad("Idle")
Local $i = 0
While $i < 20
    $monPerf.Refresh_
    ConsoleWrite($myPerf.PercentProcessorTime & @CRLF)
    Sleep(1000)
	$i += 1
Wend