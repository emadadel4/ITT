function Install-WinWinget {

    # Check if winget is installed
    $wingetInstalled = Get-Command winget -ErrorAction SilentlyContinue

    if ($wingetInstalled) {
        Write-Output "winget is installed."
    } else {

        Install-Module -Name WingetTools
        Install-WinGet
        Write-Output "winget is not installed."
    }

}