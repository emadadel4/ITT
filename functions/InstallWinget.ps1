function Install-WinWinget {

    # Check if winget is installed
    $wingetInstalled = Get-Command winget -ErrorAction SilentlyContinue

    if (-not $wingetInstalled) {
        # Download and install winget
        $wingetInstallerUrl = "https://github.com/microsoft/winget-cli/releases/latest/download/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle"
        $wingetInstallerPath = "$env:TEMP\winget.msixbundle"

        Write-Host "Winget is not installed. Installing..."

        Invoke-WebRequest -Uri $wingetInstallerUrl -OutFile $wingetInstallerPath
        Add-AppxPackage -Path $wingetInstallerPath

        Write-Host "Winget installed successfully."
    } else {
        Write-Host "Winget is already installed."
    }


}