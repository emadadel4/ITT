Clear-Host

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
    Write-Host "1: Install Firefox"
    Write-Host "2: Install Chrome"
    Write-Host "3: Install VLC"
    Write-Host "4: Install Zip"
    Write-Host "0: Back"
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
        '4'
        {
            Write-Host "Instaling Zip Please wait..."
            -executionpolicy bypass -file "https://raw.githubusercontent.com/emadadel4/ITT/main/NiniteInstall.ps1" -NiniteApp 7zip -Invoke Install
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