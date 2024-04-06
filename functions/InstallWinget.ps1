function Install-WinWinget {

    # Check if winget is installed
    if (!(Get-Command winget -ErrorAction SilentlyContinue)) {
        # Install winget
        Write-Output "winget is not installed. Trying to install..."
        
        # Check if PowerShellGet module is installed
        if (!(Get-Module -Name PowerShellGet -ListAvailable)) {
            Write-Output "PowerShellGet module not found. Installing PowerShellGet module..."
            Install-Module -Name PowerShellGet -Force -AllowClobber -Scope CurrentUser -Repository PSGallery -ErrorAction SilentlyContinue
        }

        # Install winget
        Install-Module -Name winget -Force -AllowClobber -Scope CurrentUser -Repository PSGallery -ErrorAction SilentlyContinue

        if (!(Get-Command winget -ErrorAction SilentlyContinue)) {
            Write-Output "Failed to install winget. Please download and install it manually."
        } else {
            Write-Output "winget installed successfully."
        }
    } else {
        Write-Output "winget is already installed."
    }
 
}