$registryPath = "HKLM:\SYSTEM\CurrentControlSet\Control\CrashControl"
Set-ItemProperty -Path $registryPath -Name "AutoReboot" -Value 1
Set-ItemProperty -Path $registryPath -Name "CrashDumpEnabled" -Value 1
Write-Output "BSOD automatic restart has been enabled."