Clear-Host
function Show-Menu {

    param (
        $Title = 'My Menu'
    )

Write-Host "Updated every day 2024"
Write-Output "+========================================================+";
Write-Output "| _____ __  __    _    ____       _    ____  _____ _     |";
Write-Output "|| ____|  \/  |  / \  |  _ \     / \  |  _ \| ____| |    |";
Write-Output "||  _| | |\/| | / _ \ | | | |   / _ \ | | | |  _| | |    |";
Write-Output "|| |___| |  | |/ ___ \| |_| |  / ___ \| |_| | |___| |___ |";
Write-Output "||_____|_|  |_/_/   \_\____/  /_/   \_\____/|_____|_____||";
    Invoke-Expression (Invoke-WebRequest https://raw.githubusercontent.com/emadadel4/ITT/main/quotes.ps1).Content   
    Write-Host "======================== $Title ======================="
    Write-Host "1: Microsoft Activation "
    Write-Host "2: Chris Titus Tech's Windows Utility"
    Write-Host "3: Fix Stutter in-Games [Windows 10/11]"
    Write-Host "4: Windows 10/11 Tweeks"
    Write-Host "5: Software List [NORMAL USER] >"
    write-host "`n"
    Write-Host "6: Emad Adel [Github]"
    Write-Host "7: Emad Adel [Telgram]"
    Write-Host "Q: Press 'Q' to quit"
    write-host "`n"
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
            Invoke-Expression (Invoke-WebRequest https://raw.githubusercontent.com/Sycnex/Windows10Debloater/master/Windows10DebloaterGUI.ps1).Content
        }

        '5'  
        {
            Invoke-Expression (Invoke-WebRequest https://raw.githubusercontent.com/emadadel4/ITT/main/apps.ps1).Content
        }

        '6'  
        {
            Start-Process "https://www.github.com/emadadel4"
        }

        '7'
        {
            Start-Process "https://t.me/emadadel4"
        }

        'Q' {
            Write-Host "Exiting menu..."
            return
        }
        default {
            Write-Host "Invalid selection, please try again."
            Clear-Host
        }
    }
    
    # Optionally, you can add a pause here
    if ($selection -ne 'Q') {
        pause
    }
} until ($selection -eq 'Q')