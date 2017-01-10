@echo off
rem set file=setDnsConnName
rem if not exist %file%.txt (
rem 	rem request for user input
rem 	set /p val="Enter name of connection: "
rem 	echo %val%
rem 	rem write to file
rem 	@echo %connName% > %file%.txt
rem 	pause
rem 	exit
rem )
rem read from file
rem set /p connval=<%file%.txt
set dns1=8.8.8.8
set dns2=8.8.4.4
set conn=Ethernet
rem netsh interface show interface
netsh interface ipv4 add dnsserver %conn% address=%dns1% index=1
netsh interface ipv4 add dnsserver %conn% address=%dns2% index=2

rem netsh interface ipv4 delete dnsservers %conn% all
rem netsh interface ipv4 set dnsservers %conn% static address=none register=both
pause
