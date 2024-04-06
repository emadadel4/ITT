function Install-WinWinget {

    # Check if winget is installed
    $wingetInstalled = Get-Command winget -ErrorAction SilentlyContinue

    if ($wingetInstalled) {
        Write-Host "winget is already installed."
    } else {
        Write-Host "winget is not installed. Installing it now..."
        
        # Download the latest winget package
        $wingetUrl = "https://api.github.com/repos/microsoft/winget-cli/releases/latest"
        $wingetDownloadUrl = (Invoke-WebRequest -Uri $wingetUrl).Content | ConvertFrom-Json | 
            Where-Object { $_.assets.browser_download_url -match '.msixbundle' } | 
            Select-Object -ExpandProperty browser_download_url
        Invoke-WebRequest -Uri $wingetDownloadUrl -OutFile "winget.msixbundle" -UseBasicParsing
        
        # Install winget
        Add-AppxPackage -Path ".\winget.msixbundle"
        
        # Clean up the downloaded file
        Remove-Item "winget.msixbundle"
        
        Write-Host "winget has been installed successfully."
    }

}