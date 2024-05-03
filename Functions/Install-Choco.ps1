function CheckChoco 
{
    # Check if Chocolatey is installed
    if (-not (Test-Path 'C:\ProgramData\chocolatey\choco.exe')) {

Write-Host "
+--------------------------------------------------------------------------------+
| __        _______ _     ____ ___  __  __ _____   _____ ___    ___ _____ _____  |
| \ \      / / ____| |   / ___/ _ \|  \/  | ____| |_   _/ _ \  |_ _|_   _|_   _| |
|  \ \ /\ / /|  _| | |  | |  | | | | |\/| |  _|     | || | | |  | |  | |   | |   |
|   \ V  V / | |___| |__| |__| |_| | |  | | |___    | || |_| |  | |  | |   | |   |
|    \_/\_/  |_____|_____\____\___/|_|  |_|_____|   |_| \___/  |___| |_|   |_|   |
+--------------------------------------------------------------------------------+
    Starting up... It'll be quick. I hope you like the tool :)
        
        " -ForegroundColor Red
        Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1')) *> $null

        if (-not (Test-Path $env:USERPROFILE\scoop)) {

            irm get.scoop.sh -outfile 'install.ps1'
            .\install.ps1 -RunAsAdmin [-OtherParameters ...]
            # I don't care about other parameters and want a one-line command
            iex "& {$(irm get.scoop.sh)} -RunAsAdmin"
        }

    }
    else
    {

Write-Host "
+----------------------------------------------------------------------------+
|  ___ _____ _____   _____ __  __    _    ____       _    ____  _____ _      |
| |_ _|_   _|_   _| | ____|  \/  |  / \  |  _ \     / \  |  _ \| ____| |     |
|  | |  | |   | |   |  _| | |\/| | / _ \ | | | |   / _ \ | | | |  _| | |     |
|  | |  | |   | |   | |___| |  | |/ ___ \| |_| |  / ___ \| |_| | |___| |___  |
| |___| |_|   |_|   |_____|_|  |_/_/   \_\____/  /_/   \_\____/|_____|_____| |
|                                                                            |
+----------------------------------------------------------------------------+
    Everything work fine. You good to go

" -ForegroundColor green
        
    }

}
