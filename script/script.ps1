Clear-Host
Write-Host "==================================================" -ForegroundColor Cyan
Write-Host "        CIHAZ VE SURUCU BILGI TESPIT ARACI        " -ForegroundColor Cyan
Write-Host "             [ Created by Atahan ATA]             " -ForegroundColor DarkGray
Write-Host "==================================================" -ForegroundColor Cyan
Write-Host ""

# Cihaz bilgilerini alma
$sysInfo  = Get-CimInstance -ClassName Win32_ComputerSystem
$biosInfo = Get-CimInstance -ClassName Win32_BIOS
$osInfo   = Get-CimInstance -ClassName Win32_OperatingSystem

$manufacturer = $sysInfo.Manufacturer.Trim()
$model        = $sysInfo.Model.Trim()
$serial       = $biosInfo.SerialNumber.Trim()
$osName       = $osInfo.Caption
$architecture = $osInfo.OSArchitecture

# Bilgileri ekrana yazdirma
Write-Host " [1] Uretici / Marka : " -NoNewline; Write-Host $manufacturer -ForegroundColor Yellow
Write-Host " [2] Cihaz Modeli    : " -NoNewline; Write-Host $model -ForegroundColor Yellow
Write-Host " [3] Seri Numarasi   : " -NoNewline; Write-Host $serial -ForegroundColor Green
Write-Host " [4] Isletim Sistemi : " -NoNewline; Write-Host "$osName ($architecture)" -ForegroundColor Yellow
Write-Host ""
Write-Host "==================================================" -ForegroundColor Cyan

# Seri numarasini panoya kopyalama
Set-Clipboard -Value $serial
Write-Host "[+] Seri numarasi ($serial) panoya kopyalandi!" -ForegroundColor Green
Write-Host "[!] Acilan sayfadaki arama kutusuna Ctrl+V yapip yapistirin." -ForegroundColor Magenta
Write-Host ""

# Resmi Destek Ana Sayfalari
$driverUrl = switch -Wildcard ($manufacturer) {
    "*Lenovo*"  { "https://pcsupport.lenovo.com/tr/tr" }
    "*HP*"      { "https://support.hp.com/tr-tr/drivers" }
    "*Dell*"    { "https://www.dell.com/support/home/tr-tr/product-support/servicetag/$serial/drivers" }
    "*ASUSTeK*" { "https://www.asus.com/tr/support/Download-Center/" }
    "*ASUS*"    { "https://www.asus.com/tr/support/Download-Center/" }
    "*MSI*"     { "https://www.msi.com/support/download" }
    "*Acer*"    { "https://www.acer.com/tr-tr/support" }
    "*Monster*"{ "https://www.monsternotebook.com.tr/suruculer/" }
    Default     { "https://www.google.com/search?q=" + [System.Uri]::EscapeDataString("$manufacturer $model drivers") }
}

Write-Host "[*] Destek sayfasi aciliyor..." -ForegroundColor Cyan
Start-Process $driverUrl

Read-Host "Kapatmak icin Enter tusuna basin"