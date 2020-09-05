@echo off
rem Control Panel settings
echo Control Panel Options:
echo [1] Date and Time
echo [2] Add/Remove Programs
echo [3] Network Connections
echo [4] Power Management
echo [5] Task Scheduler
set /p val="Enter option: "
if %val% equ 1 (
	control timedate.cpl
) else if %val% equ 2 (
	control appwiz.cpl
) else if %val% equ 3 (
	control ncpa.cpl
) else if %val% equ 4 (
	control powercfg.cpl
) else if %val% equ 5 (
	control schedtasks
) else (
	echo Error. Option not available.
)
