

function Show-Menu {

    param (
        $Title = 'My Menu'
    )
    Clear-Host

Write-Output "+========================================================+";
Write-Output "| _____ __  __    _    ____       _    ____  _____ _     |";
Write-Output "|| ____|  \/  |  / \  |  _ \     / \  |  _ \| ____| |    |";
Write-Output "||  _| | |\/| | / _ \ | | | |   / _ \ | | | |  _| | |    |";
Write-Output "|| |___| |  | |/ ___ \| |_| |  / ___ \| |_| | |___| |___ |";
Write-Output "||_____|_|  |_/_/   \_\____/  /_/   \_\____/|_____|_____||";


    Write-Host "================ $Title ============================"
    Write-Host "1: Microsoft Activation "
    Write-Host "2: Chris Titus Tech's Windows Utility"
    Write-Host "3: Emad Adel [Github]"
    Write-Host "4: Emad Adel [Telgram]"
    Write-Host "Q: Press 'Q' to quit"

   
}

do {
    Show-Menu -Title 'Emad Utility'
    $selection = Read-Host "Please make a selection"
    switch ($selection) {
        '1' {irm https://massgrave.dev/get | iex}
        
        '2' {Invoke-WebRequest -useb https://christitus.com/win | Invoke-Expression}

        '3'  {Start-Process "https://www.github.com/emadadel4"}

        '4'  {Start-Process "https://t.me/emadadel4"}

        'Q' {
            Write-Host "Exiting menu..."
            return
        }
        'F' {
            Write-Host "Opening Telegram Page..."
            return
        }
        default {
            Write-Host "Invalid selection, please try again."
        }
    }
    # Optionally, you can add a pause here
    if ($selection -ne 'Q') {
        pause
    }
    if ($selection -ne 'F') {
        '4'  {Start-Process "https://t.me/emadadel4"}
    }
} until ($selection -eq 'Q')
} until ($selection -eq 'F')