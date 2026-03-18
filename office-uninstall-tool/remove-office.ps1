$path = "C:\Tools"
write-Host "Deleting all Office Versions"
$installerPath = "$path\SaRA.zip"
$SaRAPath = "$path\SaRA"

Write-Host "Downloading the last versions of SaRA"
$DownloadUrl = "https://aka.ms/SaRA_EnterpriseVersionFiles"
wget $DownloadUrl -OutFile $installerPath
write-Host "Unzipping ZIP"
Expand-Archive -Path $installerPath -DestinationPath $SaRAPath -Force
write-Host "Deleting all Office Versions. This process may take some time."
C:\Tools\SaRA\SaRACmd.exe -S OfficeScrubScenario -Officeversion All -AcceptEula
