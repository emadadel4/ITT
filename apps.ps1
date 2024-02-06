Clear-Host


function Install ($name) {
    Write-Host "Instaling $name Please wait..."
    $url = "https://raw.githubusercontent.com/emadadel4/ITT/main/NiniteInstall.ps1"
    $outpath = "$env:temp/NiniteInstall.ps1"
    Invoke-WebRequest -Uri $url -OutFile $outpath
    powershell.exe -executionpolicy bypass -file "NiniteInstall.ps1" -NiniteApp $name -Invoke Install
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

    write-host "================ Browser ============================"
    Write-Host "1: Firefox"
    Write-Host "2: Chrome"
    Write-Host "3: Opera"

    
    write-host "================ Multimedia ============================"
    Write-Host "1: VLC"
    Write-Host "2: Winamp"
    Write-Host "3: K-Lite Codecs"

    write-host "`n"

    write-host "================ Downlowder ============================"
    Write-Host "4: qBittorrent"
    write-host "`n"

    write-host "================ Explorer ============================"
    Write-Host "5: Zip"
    Write-Host "6: FastStone"

    write-host "`n"
    write-host "================ Messaging ============================"
    Write-Host "1: Zoom"
    Write-Host "1: Discord"

    write-host "================ Documents ============================"
    Write-Host "1: Foxit Reader"
    Write-Host "2: LibreOffice icon LibreOffice"
    Write-Host "3: OpenOffice"

    write-host "`n"

    write-host "================ Security ============================"
    Write-Host "1: Malwarebytes"
    Write-Host "2: Avast"

    write-host "`n"

    write-host "================ Utilities ============================"
    Write-Host "1: TeamViewer"
    Write-Host "2: ImgBurn"
    Write-Host "3: Revo"
    Write-Host "4: CCleaner"

    write-host "`n"

    write-host "================ Other ============================"
    Write-Host "1: Steam"
    Write-Host "2: ImgBurn"
    Write-Host "3: Revo"

    write-host "`n"

    write-host "================ Developer Tools ============================"
    Write-Host "1: Visual Studio Code"
    Write-Host "2: FileZilla"
    Write-Host "3: Notepad++"


    Write-Host "0: Back"
}

do {
    Show-Menu -Title 'IT Tools'
    $selection = Read-Host "Please make a selection"
    switch ($selection) {
        '1'
        {

            Install("Firefox")
        }
        
        '2'
        {
            
            Install("Chrome")
        }
        '3'
        {

            Install("VLC")
        }
        '4'
        {
            Install("WinRAR")
        }
        '5'
        {

            Install("FastStone")
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