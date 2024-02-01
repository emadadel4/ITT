
Invoke-Expression (Invoke-WebRequest https://raw.githubusercontent.com/emadadel4/ITT/main/quotes.ps1).Content   

Start-Sleep -Seconds 6 



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


    $q | Get-Random

    Write-Host "======================== $Title ======================="
    Write-Host "1: Microsoft Activation "
    Write-Host "2: Chris Titus Tech's Windows Utility"
    Write-Host "3: Fix Stutter in-Games [Windows 10/11]"
    Write-Host "4: Software List [NORMAL USER]"

    Write-Host "5: Emad Adel [Github]"
    Write-Host "6: Emad Adel [Telgram]"
    Write-Host "Q: Press 'Q' to quit"
   
}

do {
    Show-Menu -Title 'IT Tools'
    $selection = Read-Host "Please make a selection"
    switch ($selection) {
        '1'
        {
            Invoke-RestMethod https://massgrave.dev/get | Invoke-Expression
        }
        
        '2'
        {
            Invoke-WebRequest -useb https://christitus.com/win | Invoke-Expression
        }

        '3'
        {
            Invoke-WebRequest "https://raw.githubusercontent.com/emadadel4/Fix-Stutter-in-Games/main/Fix%20Stutter%20Games%20%5Brun%20as%20administrator%5D.bat" -outfile "fix.bat"
            Start-Process -FilePath "fix.bat"
        }
       
        '4'
        {
            Invoke-Expression (Invoke-WebRequest https://raw.githubusercontent.com/emadadel4/ITT/main/apps.ps1).Content

        }

        '5'  
        {
            Start-Process "https://www.github.com/emadadel4"
        }

        '6'
        {
            Start-Process "https://t.me/emadadel4"
        }

        'Q' {
            Write-Host "Exiting menu..."
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
} until ($selection -eq 'Q')