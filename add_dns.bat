@echo off
cls
set dns1=8.8.8.8
set dns2=8.8.4.4
set conn=Ethernet
netsh interface ipv4 add dnsserver %conn% address=%dns1% index=1
netsh interface ipv4 add dnsserver %conn% address=%dns2% index=2
