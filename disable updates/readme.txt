Start
Type "gpedit.msc", Enter
Navigate to: Computer Configuration > Administrative Templates > Windows Components > Windows Update
Double-click "Configure Automatic Updates"
Select "Disabled", click OK.
 
Start
Type "services.msc", Enter
Double-click "Windows Update"
Select "Startup Type: Manual", click OK.

you can set metered on wired connections, but have to use the registry.
HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\NetworkList\DefaultMediaCost
Set ethernet = 2
Set wifi = 2
reboot
you now have a metered ethernet and wifi connection

