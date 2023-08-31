# variables
$DownloadURL = "https://raw.githubusercontent.com/balaji-ramk/dns-changer/main/changedns.ps1"
$currentdir = [System.Environment]::CurrentDirectory
Set-Location Downloads
$filepath = $currentdir + "Downloads\changedns.ps1"

# commands
# New-Item -itemtype Directory -Path dnschanger_temp
Invoke-WebRequest $DownloadURL -OutFile "changedns.ps1"
Start-Process PowerShell -Verb RunAs -ArgumentList $filepath
Write-Output $filepath
# Remove-Item -Force -Recurse dnschanger_temp
