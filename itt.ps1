

function Show-Menu {




    param (
        $Title = 'My Menu'
    )
    Clear-Host

echo "+========================================================+";
echo "| _____ __  __    _    ____       _    ____  _____ _     |";
echo "|| ____|  \/  |  / \  |  _ \     / \  |  _ \| ____| |    |";
echo "||  _| | |\/| | / _ \ | | | |   / _ \ | | | |  _| | |    |";
echo "|| |___| |  | |/ ___ \| |_| |  / ___ \| |_| | |___| |___ |";
echo "||_____|_|  |_/_/   \_\____/  /_/   \_\____/|_____|_____||";


    Write-Host "================ $Title ============================"
    Write-Host "1: Emad Adel Github Page"
    Write-Host "2: Chris Titus Tech's Windows Utility"
    Write-Host "3: Microsoft Activation"
    Write-Host "Q: Press 'Q' to quit"


}

do {
    Show-Menu -Title 'Emad Utility'
    $selection = Read-Host "Please make a selection"
    switch ($selection) {
        '1' {Start "https://www.github.com/emadadel4"}

        '2' {iwr -useb https://christitus.com/win | iex}
        '3' {irm https://massgrave.dev/get | iex}
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