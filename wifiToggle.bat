@echo off
set /p wifi="Enter name of Wi-Fi connection: "
netsh wlan show networks | FIND "%wifi%" /I /C
rem if %errorlevel% equ 1 (
rem 	netsh interface set interface name="Wi-Fi" admin=enable
rem ) else (
rem 	netsh interface set interface name="Wi-Fi" admin=disable
rem )
pause
