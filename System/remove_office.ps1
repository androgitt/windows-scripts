$path = "C:\Tools"
write-Host "Borrando versiones de Office mediante SaRA"
$installerPath = "$path\SaRA.zip"
$SaRAPath = "$path\SaRA"

Write-Host "Descargando la última versión disponible de la página web de SaRA"
$DownloadUrl = "https://aka.ms/SaRA_EnterpriseVersionFiles"
wget $DownloadUrl -OutFile $installerPath
write-Host "Descomprimiendo el zip"
Expand-Archive -Path $installerPath -DestinationPath $SaRAPath -Force
write-Host "Borrando todas las versiones de Office. Este proceso puede tardar. Por favor, espere"
C:\Tools\SaRA\SaRACmd.exe -S OfficeScrubScenario -Officeversion All -AcceptEula
