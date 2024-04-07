function Install-WinWinget {

    # Check if winget is installed
    if (-not (Get-Command winget -ErrorAction SilentlyContinue)) {

        irm https://github.com/asheroto/winget-install/releases/latest/download/winget-install.ps1 | iex

        # Optional: Check if installation was successful
        if (Get-Command winget -ErrorAction SilentlyContinue) {
            Write-Output "winget installed successfully."
        } else {
            Write-Output "winget installation failed."
        }
    } else {
        Write-Output "winget is already installed."
    }
}