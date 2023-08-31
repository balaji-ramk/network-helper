# variables
# $currentdir = [System.Environment]::CurrentDirectory
$DownloadURL = "https://raw.githubusercontent.com/balaji-ramk/dns-changer/main/changedns.ps1"
$tempdir = "$env:userprofile\Downloads\dns-changer-temp"
$filepath = $tempdir + "\changedns.ps1"

# commands
New-Item -itemtype Directory -Path dns-changer-temp
Invoke-WebRequest $DownloadURL -OutFile $filepath
Start-Process PowerShell -Verb RunAs -ArgumentList $filepath
# Remove-Item -Force -Recurse $tempdir
