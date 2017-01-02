netsh wlan show networks | FIND "Wi-Fi" /I /C
if %errorlevel% equ 1 (
	netsh interface set interface name="Wi-Fi" admin=enable
) else (
	netsh interface set interface name="Wi-Fi" admin=disable
)
