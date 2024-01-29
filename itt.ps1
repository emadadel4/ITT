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
    Write-Host "3: Fix Stutter in-Games [Windows 10/11]"
    Write-Host "4: Download and Install Firefox"
    
    Write-Host "5: Emad Adel [Github]"
    Write-Host "6: Emad Adel [Telgram]"
    Write-Host "Q: Press 'Q' to quit"
   
}

do {
    Show-Menu -Title 'Emad Utility'
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

            $FileUri = "https://cdn.stubdownloader.services.mozilla.com/builds/firefox-stub/en-US/win/4f2b8e1a798f5e36c7a143cfab55666b09da95a8ba649cf364f8203efeefd7c3/Firefox Installer.exe"
            $Destination = "$env:temp\Firefox Installer"
            
            $bitsJobObj = Start-BitsTransfer $FileUri -Destination $Destination
            
            switch ($bitsJobObj.JobState) {
            
                'Transferred' {
                    Complete-BitsTransfer -BitsJob $bitsJobObj
                    break
                }
            
                'Error' {
                    throw 'Error downloading'
                }
            }
            
            $exeArgs = '/verysilent /tasks=addcontextmenufiles,addcontextmenufolders,addtopath'
            Start-Process -Wait $Destination -ArgumentList $exeArgs
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