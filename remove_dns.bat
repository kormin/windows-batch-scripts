@echo off
cls

set conn="Ethernet"
netsh interface ipv4 delete dnsservers %conn% all
