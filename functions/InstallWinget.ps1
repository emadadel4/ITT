function Install-WinWinget {

    # Check if winget is installed
    if (-not (Get-Command winget -ErrorAction SilentlyContinue)) {
        # Download the installer
        $url = "https://github.com/microsoft/winget-cli/releases/latest/download/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.appxbundle"
        $installerPath = "$env:TEMP\winget.appxbundle"
        Invoke-WebRequest -Uri $url -OutFile $installerPath

        # Install winget
        Add-AppxPackage -Path $installerPath

        # Check if installation was successful
        if (Get-Command winget -ErrorAction SilentlyContinue) {
            Write-Output "winget installed successfully."
        } else {
            Write-Output "Failed to install winget."
        }

        # Clean up the installer
        Remove-Item $installerPath -Force
    } else {
        Write-Output "winget is already installed."
    }

}