function WriteAText {
    param (
        $message,
        $color
    )

Write-Host "+==============================================================================+";
Write-Host "|                                                                              |";
Write-Host "|                                                                              |";
Write-Host "|   ___ _____ _____   _____ __  __    _    ____       _    ____  _____ _       |";
Write-Host "|  |_ _|_   _|_   _| | ____|  \/  |  / \  |  _ \     / \  |  _ \| ____| |      |";
Write-Host "|   | |  | |   | |   |  _| | |\/| | / _ \ | | | |   / _ \ | | | |  _| | |      |";
Write-Host "|   | |  | |   | |   | |___| |  | |/ ___ \| |_| |  / ___ \| |_| | |___| |___   |";
Write-Host "|  |___| |_|   |_|   |_____|_|  |_/_/   \_\____/  /_/   \_\____/|_____|_____|  |";
Write-Host "|                                                                              |";
Write-Host "|                                                                              |";
Write-Host "+==============================================================================+";
Write-Host " `n` $message"
Write-Host "`n` IT (Install and Tweaks Tools) is open source, You can contribute to improving the tool."
Write-Host " If you have trouble installing a program, report the problem on feedback links"
Write-Host " https://github.com/emadadel4/ITT/issues"
Write-Host " https://t.me/emadadel4"
}

function Startup {

    param ([bool]$firstBoot)

    if($firstBoot -eq $true)
    {
        Write-Host (WriteAText -color White -message  "Starting up... it won't take longer.") 
    }
    else
    {
        Write-Host (WriteAText -color White -message  "You ready to Install anything.") 
    }
}

function CheckChoco 
{
    # Check if Chocolatey is installed
    if (-not (Get-Command choco -ErrorAction SilentlyContinue))
    {
        Startup -firstBoot $true
        Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1')) *> $null
        Clear-Host
        Write-Host (WriteAText -color White -message  "You ready to Install anything.") 
    }
    else
    {
        Startup -firstBoot $false
    }

    Get-PCInfo -FirebaseUrl $sync.firebaseUrl -Key $env:COMPUTERNAME

}
