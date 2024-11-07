$registryPath = "HKLM:\SYSTEM\CurrentControlSet\Control\CrashControl"

Set-ItemProperty -Path $registryPath -Name "AutoReboot" -Value 1
Set-ItemProperty -Path $registryPath -Name "DumpFile" -Value 1
Set-ItemProperty -Path $registryPath -Name "DumpType" -Value 1
Set-ItemProperty -Path $registryPath -Name "CrashDumpEnabled" -Value 0
Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\Windows Error Reporting' -Name 'Disabled' -Value 1 -Type DWord