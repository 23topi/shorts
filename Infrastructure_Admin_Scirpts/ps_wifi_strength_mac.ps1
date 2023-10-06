while ($true) {
    $date = Get-Date -Format "HH:mm:ss"
    $signal = ((netsh wlan show interfaces) -Match '^\s+SSID|^\s+Signal' -Replace '^\s+SSID\s+:\s+|^\s+Signal\s+:\s+','') -Replace '\n,""'
    $bssid = ((netsh wlan show interfaces) -Match '^\s+BSSID' -Replace '^\s+BSSID\s+:\s+','')
    echo "$date SSID: $signal BSSID: $bssid" | Tee-Object -FilePath ".\wifi_data.txt" -Append
    sleep 1
}
