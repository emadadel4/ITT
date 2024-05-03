function CheckChoco 
{
    # Check if Chocolatey is installed
    if (-not (Get-Command choco -ErrorAction SilentlyContinue)) {
        
        Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1')) *> $null
    }

    if (-not (Get-Command scoop -ErrorAction SilentlyContinue)) {

        Write-Host "
+--------------------------------------------------------------------------------+
| __        _______ _     ____ ___  __  __ _____   _____ ___    ___ _____ _____  |
| \ \      / / ____| |   / ___/ _ \|  \/  | ____| |_   _/ _ \  |_ _|_   _|_   _| |
|  \ \ /\ / /|  _| | |  | |  | | | | |\/| |  _|     | || | | |  | |  | |   | |   |
|   \ V  V / | |___| |__| |__| |_| | |  | | |___    | || |_| |  | |  | |   | |   |
|    \_/\_/  |_____|_____\____\___/|_|  |_|_____|   |_| \___/  |___| |_|   |_|   |
+--------------------------------------------------------------------------------+
    Starting up for the first time, it won't take longer :)
    (IT Tools) is open source, You can contribute to improving the tool.

    Nothing true everything permitted. 
    Freedom is not given it is taken.

        " -ForegroundColor green
        iex "& {$(irm get.scoop.sh)} -RunAsAdmin" | Out-Null
        scoop bucket add extras *> $null
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
