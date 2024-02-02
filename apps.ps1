Invoke-Expression (Invoke-WebRequest https://raw.githubusercontent.com/emadadel4/ITT/main/quotes.ps1).Content   

function Show-Menu {

    param (
        $Title = 'Apps List'
    )
    Clear-Host

Write-Output "+========================================================+";
Write-Output "| _____ __  __    _    ____       _    ____  _____ _     |";
Write-Output "|| ____|  \/  |  / \  |  _ \     / \  |  _ \| ____| |    |";
Write-Output "||  _| | |\/| | / _ \ | | | |   / _ \ | | | |  _| | |    |";
Write-Output "|| |___| |  | |/ ___ \| |_| |  / ___ \| |_| | |___| |___ |";
Write-Output "||_____|_|  |_/_/   \_\____/  /_/   \_\____/|_____|_____||";

    $q | Get-Random
    Write-Host "================ $Title ============================"
    Write-Host "1: Install Firefox"
    Write-Host "2: Install Chrome"
    Write-Host "3: Install VLC"

    Write-Host "X: Back"

    
   
}

do {
    Show-Menu -Title 'IT Tools'
    $selection = Read-Host "Please make a selection"
    switch ($selection) {
        '1'
        {
           Write-Host "Instaling Firefox Please wait..."
           Invoke-Expression (Invoke-WebRequest https://raw.githubusercontent.com/emadadel4/ITT/main/apps/firefox.ps1).Content
        }
        
        '2'
        {
            Write-Host "Instaling Chrome Please wait..."
            Invoke-Expression (Invoke-WebRequest https://raw.githubusercontent.com/emadadel4/ITT/main/apps/chrome.ps1).Content
        }
        '3'
        {
            Write-Host "Instaling VLC Please wait..."
            Invoke-Expression (Invoke-WebRequest https://raw.githubusercontent.com/emadadel4/ITT/main/apps/vlc.ps1).Content
        }

        'X' {
            Invoke-Expression (Invoke-WebRequest https://raw.githubusercontent.com/emadadel4/ITT/main/itt.ps1).Content
            return
        }
        default {
            Write-Host "Invalid selection, please try again."
        }
    }
    
    # Optionally, you can add a pause here
    if ($selection -ne 'X') {
        pause
    }
} until ($selection -eq 'X')