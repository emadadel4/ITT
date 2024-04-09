function CheckChoco {

    # Check if Chocolatey is installed
    if (-not (Test-Path 'C:\ProgramData\chocolatey\choco.exe')) {
        # Chocolatey is not installed, so install it
        Write-Host "Chocolatey is not installed. Installing Chocolatey..."
        Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
        if ($LastExitCode -ne 0) {
            Write-Host "Failed to install Chocolatey. Exiting..."
            exit 1
        }
        Write-Host "Chocolatey installed successfully."
    } else {
        Write-Host "Chocolatey is already installed."
    }
    
}