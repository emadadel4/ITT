function Invoke-Install {
 <#

    .SYNOPSIS
        Installs the selected programs using winget, if one or more of the selected programs are already installed on the system, winget will try and perform an upgrade if there's a newer version to install.

    #>

    if($sync.ProcessRunning){
        $msg = "Install process is currently running..."
        [System.Windows.MessageBox]::Show($msg, "Winutil", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Warning)
        return
    }

    Invoke-WPFRunspace -ArgumentList $WingetInstall -DebugPreference $DebugPreference -ScriptBlock {
        param($WingetInstall, $DebugPreference)

        try{
            $sync.ProcessRunning = $true

            Start-Process -FilePath winget -ArgumentList "install 7zip.7zip -s winget --accept-package-agreements --silent" -NoNewWindow -Wait

            Write-Host "==========================================="
            Write-Host "--      Installs have finished          ---"
            Write-Host "==========================================="
        }
        Catch {

            Write-Host "==========================================="
            Write-Host "Error: $_"
            Write-Host "==========================================="
        }

        Start-Sleep -Seconds 5
        $sync.ProcessRunning = $False
    }
}