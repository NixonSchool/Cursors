@echo off
reg query "HKU\S-1-5-19" >nul
if not %ErrorLevel% == 0 (
	PowerShell Start-Process -FilePath "%0" -ArgumentList "%cd%" -verb runas
	exit)
pushd "%~dp0"
set cur=%%SystemRoot%%\Cursors\Glitch
set key=HKU\.DEFAULT\Control Panel\Cursors
if not exist restore-cursors.reg (reg export "%key%" restore-cursors.reg)
reg add "%key%" /v "AppStarting" /d "%cur%\start.ani" /f
reg add "%key%" /v "Arrow" /d "%cur%\arrow.cur" /f
reg add "%key%" /v "Crosshair" /d "%cur%\cross.cur" /f
reg add "%key%" /v "Hand" /d "%cur%\hand.cur" /f
reg add "%key%" /v "Help" /d "%cur%\help.cur" /f
reg add "%key%" /v "IBeam" /d "%cur%\text.cur" /f
reg add "%key%" /v "No" /d "%cur%\no.cur" /f
reg add "%key%" /v "NWPen" /d "%cur%\pen.cur" /f
reg add "%key%" /v "Person" /d "%cur%\person.cur" /f
reg add "%key%" /v "Pin" /d "%cur%\pin.cur" /f
reg add "%key%" /v "SizeAll" /d "%cur%\move.cur" /f
reg add "%key%" /v "SizeNESW" /d "%cur%\diag2.cur" /f
reg add "%key%" /v "SizeNS" /d "%cur%\vert.cur" /f
reg add "%key%" /v "SizeNWSE" /d "%cur%\diag1.cur" /f
reg add "%key%" /v "SizeWE" /d "%cur%\hori.cur" /f
reg add "%key%" /v "UpArrow" /d "%cur%\link.cur" /f
reg add "%key%" /v "Wait" /d "%cur%\wait.ani" /f
