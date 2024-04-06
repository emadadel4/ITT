function Install-WinWinget {

    # Check if winget is installed
    if (-not (Get-Command winget -ErrorAction SilentlyContinue)) {
        # Install winget
        Invoke-WebRequest -Uri "https://github.com/microsoft/winget-cli/releases/download/v1.0.11692/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.appxbundle" -OutFile "$env:TEMP\winget.appxbundle"
        Add-AppxPackage -Path "$env:TEMP\winget.appxbundle"
    }

}