function Install-WinWinget {

    # Check if winget is installed
    $wingetInstalled = Get-Command winget -ErrorAction SilentlyContinue

        if (-not $wingetInstalled) {
            # Download and install winget
            Invoke-WebRequest -Uri "https://github.com/microsoft/winget-cli/releases/latest/download/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.appxbundle" -OutFile "$env:TEMP\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.appxbundle"
            Add-AppxPackage -Path "$env:TEMP\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.appxbundle"
            # Check if installation was successful
            $wingetInstalled = Get-Command winget -ErrorAction SilentlyContinue

            if (-not $wingetInstalled) {
                Write-Host "Error: Unable to install winget. Please install it manually."
            } else {
                Write-Host "winget has been installed successfully."
            }
        } else {
            Write-Host "winget is already installed."
        }

}

Install-WinWinget