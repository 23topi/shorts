while ($true) {
    $networks = netsh wlan show interfaces
    $ssid = $null
    $signalStrength = $null

    foreach ($line in $networks) {

    if ($line -match "SSID") {
        $ssid = $line -replace "SSID\s+:\s+", ""
        Write-Host "SSID: $ssid"
        }
        if ($line -match "Signal") {
            $signalStrength = $line -replace "Signal\s+:\s+", ""
        }
    }

    if ($ssid -and $signalStrength) {
        Write-Host "SSID: $ssid, Signalstärke: $signalStrength"
    } else {
        Write-Host "Kein WLAN-Netzwerk gefunden."
    }

    Start-Sleep -Seconds 5  # Aktualisierung alle 5 Sekunden (kann anpassen werden)
}
