function Refresh-Explorer {

    if($itt.ProcessRunning) {
        Message -key "Pleasewait" -icon "Warning"
        return
    }

    $itt.ProcessRunning = $true

    # Check if explorer is not running and start it if needed
    Stop-Process -Name explorer -Force
    Start-Sleep -Seconds 1

    if (-not (Get-Process -Name explorer -ErrorAction SilentlyContinue)) {
        Start-Process explorer.exe -Verb RunAs
    }

    $itt.ProcessRunning = $false

}