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

    write-host "================ Browser ============================"
    Write-Host "1: Firefox"
    Write-Host "2: Chrome"

    write-host "`n"

    write-host "================ Multimedia ============================"
    Write-Host "3: VLC (Best Multimedia)"

    write-host "`n"

    write-host "================ Explorer ============================"
    Write-Host "4: Zip"
    Write-Host "5: FastStone"

    write-host "`n"

    Write-Host "6:Install Custom app"
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
            $url = "https://raw.githubusercontent.com/emadadel4/ITT/main/NiniteInstall.ps1"
            $outpath = "$env:temp/NiniteInstall.ps1"
            Invoke-WebRequest -Uri $url -OutFile $outpath
            powershell.exe -executionpolicy bypass -file "NiniteInstall.ps1" -NiniteApp WinRAR -Invoke Install
        }
        '5'
        {
            Write-Host "Instaling FastStone Please wait..."
            $url = "https://raw.githubusercontent.com/emadadel4/ITT/main/NiniteInstall.ps1"
            $outpath = "$env:temp/NiniteInstall.ps1"
            Invoke-WebRequest -Uri $url -OutFile $outpath
            powershell.exe -executionpolicy bypass -file "NiniteInstall.ps1" -NiniteApp FastStone -Invoke Install
        }
        '6'
        {
            Write-Host "Testing..."
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