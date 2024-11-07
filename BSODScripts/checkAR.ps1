$crashControl = "HKLM:\SYSTEM\CurrentControlSet\Control\CrashControl"

$autoReboot = Get-ItemProperty -Path $crashControl -Name "AutoReboot"
$dumpFile = Get-ItemProperty -Path $crashControl -Name "DumpFile"
$dumpType = Get-ItemProperty -Path $crashControl -Name "DumpType"
$crashDumpEnabled = Get-ItemProperty -Path $crashControl -Name "CrashDumpEnabled"
$WERPath = Get-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\Windows Error Reporting' -Name 'Disabled'

if ($autoReboot.AutoReboot -eq 0) 
	{
		Write-Output "AUTOMATIC REBOOT DISABLED"
	}else{
		Write-Output "AUTOMATIC REBOOT ENABLED"
	}

if ($dumpFile.DumpFile -eq 0) {
		Write-Output "DUMPFILE DISABLED"
	}else{
		Write-Output "DUMPFILE ENABLED"
	}

if ($dumpType.DumpType -eq 0) {
		Write-Output "DUMPTYPE DISABLED"
	}else{
		Write-Output "DUMPTYPE ENABLED"
	}

if ($crashDumpEnabled.CrashDumpEnabled -eq 0) {
		Write-Output "CRASHDUMP DISABLED"
	}else{
		Write-Output "CRASHDUMP ENABLED"
	}
	
if ($null -ne $WERPath) {
		Write-Output "AUTOMATIC REPORTING DISABLED"
	}else{
		Write-Output "AUTOMATIC REPORTING NOT DISABLED"
	}
