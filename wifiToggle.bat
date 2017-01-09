@echo off
set file=wifiName
if not exist %file%.txt (
	set /p wifi="Enter name of Wi-Fi connection: "
	@echo %wifi% > %file%.txt
	rem echo %file%.txt does not exist
	pause
	exit
)
set /p wfval=<%file%.txt
rem echo %wfval%
netsh wlan show networks | FIND "%wfval%" /I /C
if %errorlevel% equ 1 (
	netsh interface set interface name="Wi-Fi" admin=enable
) else (
	netsh interface set interface name="Wi-Fi" admin=disable
)
pause
