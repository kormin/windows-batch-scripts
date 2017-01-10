@echo off
rem set file=wifiName
rem if not exist %file%.txt (
rem 	rem request for user input
rem 	set /p wifi="Enter name of Wi-Fi connection: "
rem 	rem write to file
rem 	@echo %wifi% > %file%.txt
rem 	rem echo %file%.txt does not exist
rem 	pause
rem 	exit
rem )
rem rem read from file
rem set /p wfval=<%file%.txt
rem echo %wfval%
set wf=Wi-Fi
netsh wlan show networks | FIND "%wf%" /I /C
if %errorlevel% equ 1 (
	netsh interface set interface name="%wf%" admin=enable
) else (
	netsh interface set interface name="%wf%" admin=disable
)
pause
