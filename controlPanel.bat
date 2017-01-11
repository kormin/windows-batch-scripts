@echo off
rem Control Panel settings
echo Control Panel Options:
echo [1] Date and Time
echo [2] Add/Remove Programs
set /p val="Enter option: "
echo %val%
if %val% equ 1 (
	control timedate.cpl
) else if %val% equ 2 (
	control appwiz.cpl

) else (
	echo Error. Option not available.
)
