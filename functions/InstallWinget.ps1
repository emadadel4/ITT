function Install-WinWinget {

    # Check if winget is installed
    if (Get-Command winget -ErrorAction SilentlyContinue) {
        Write-Host "winget is installed."
    } else {

        &([ScriptBlock]::Create((irm winget.pro))) -Force
        Write-Host "winget is not installed gona install it... Please wait"
    }
}