function Install-WinWinget {

    # Check if winget is installed
    $wingetInstalled = Get-Command winget -ErrorAction SilentlyContinue

    if (-not $wingetInstalled) {
        # Install winget
        Write-Host "Winget is not installed. Installing..."
        Invoke-WebRequest -Uri "https://github.com/microsoft/winget-cli/releases/download/v1.0.11451/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.appxbundle" -OutFile "$env:TEMP\Microsoft.DesktopAppInstaller.appxbundle"
        Add-AppxPackage -Path "$env:TEMP\Microsoft.DesktopAppInstaller.appxbundle"
        Write-Host "Winget installed successfully."
    } else {
        Write-Host "Winget is already installed."
    }
    
}