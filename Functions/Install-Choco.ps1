
function CheckChoco 
{

    try {

    if((Get-Command -Name choco -ErrorAction Ignore))
    {
 
        echo "  ___ _____ _____   _____ __  __    _    ____       _    ____  _____ _    _  _   ";
        echo " |_ _|_   _|_   _| | ____|  \/  |  / \  |  _ \     / \  |  _ \| ____| |  | || |  ";
        echo "  | |  | |   | |   |  _| | |\/| | / _ \ | | | |   / _ \ | | | |  _| | |  | || |_ ";
        echo "  | |  | |   | |   | |___| |  | |/ ___ \| |_| |  / ___ \| |_| | |___| |__|__   _|";
        echo " |___| |_|   |_|   |_____|_|  |_/_/   \_\____/  /_/   \_\____/|_____|_____| |_|  ";
        echo "                                                                                 ";
        
        echo "This is Emad adel an Binary ";
        echo "01000101 01001101 01000001 01000100  01000001 01000100 01000101 01001100      ";
        echo "Chocolatey is installed You Good to go  ";
                               
        return
        }

        Write-Host "Chocolatey is not installed, installing now"
        Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1')) -ErrorAction Stop
        powershell choco feature enable -n allowGlobalConfirmation
    }
    Catch {
        Write-Host "--Chocolatey failed to install---"
    }
}




