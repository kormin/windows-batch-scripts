@echo off
rem request for user input
set /p fdname="Enter name of flash drive: "
rem echo %fdname%
attrib -h -s -r -a /s /d %fdname%:*.*
pause