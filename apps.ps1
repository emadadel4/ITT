Clear-Host


function Go ($url) {
    Invoke-Expression (Invoke-WebRequest $url).Content
    Clear-Host
}

function Show-Menu {

    param (
        $Title = 'Apps List'
    )

Write-Output "+========================================================+";
Write-Output "| _____ __  __    _    ____       _    ____  _____ _     |";
Write-Output "|| ____|  \/  |  / \  |  _ \     / \  |  _ \| ____| |    |";
Write-Output "||  _| | |\/| | / _ \ | | | |   / _ \ | | | |  _| | |    |";
Write-Output "|| |___| |  | |/ ___ \| |_| |  / ___ \| |_| | |___| |___ |";
Write-Output "||_____|_|  |_/_/   \_\____/  /_/   \_\____/|_____|_____||";

    Invoke-Expression (Invoke-WebRequest https://raw.githubusercontent.com/emadadel4/ITT/main/quotes.ps1).Content  

    Write-Host "================ $Title ============================"
    Write-Host "1: Media"
    Write-Host "2: Web Browsers"
    Write-Host "3: Documents"
    Write-Host "4: Security"
    Write-Host "5: Utilities"
    Write-Host "6: Developer Tools"
    Write-Host "0: Back"
}

do {
    Show-Menu -Title 'IT Tools'
    $selection = Read-Host "Please make a selection"
    switch ($selection) {
        '1'
        {
           Go("https://raw.githubusercontent.com/emadadel4/ITT/main/apps/multimedia.ps1")
        }
        
        '2'
        {
            Write-Host "Soon."
        }
        '3'
        {
            Write-Host "Soon."
        }
        '4'
        {
            Write-Host "Soon."

        }
        '5'
        {
            Write-Host "Soon."

        }
        '6'
        {
            Write-Host "Soon."
        }

        '0' {
            Invoke-Expression (Invoke-WebRequest https://raw.githubusercontent.com/emadadel4/ITT/main/itt.ps1).Content
            return
        }
        default {
            Write-Host "Invalid selection, please try again."
            Clear-Host
        }
    }
    
    # Optionally, you can add a pause here
    if ($selection -ne '0') {
        pause
    }
} until ($selection -eq '0')