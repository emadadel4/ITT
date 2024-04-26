
function CheckChoco 
{

    try {

    if((Get-Command -Name choco -ErrorAction Ignore))
    {
 
Write-Host "
___ _____ _____   _____ __  __    _    ____    _    ____  _____ _    _  _   
|_ _|_   _|_   _| | ____|  \/  |  / \  |  _ \  / \  |  _ \| ____| |  | || |  
 | |  | |   | |   |  _| | |\/| | / _ \ | | | |/ _ \ | | | |  _| | |  | || |_ 
 | |  | |   | |   | |___| |  | |/ ___ \| |_| / ___ \| |_| | |___| |__|__   _|
|___| |_|   |_|   |_____|_|  |_/_/   \_\____/_/   \_\____/|_____|_____| |_|  
Chocolatey is installed You Good to go
" -ForegroundColor green
        return
        }

Write-Host "
__        _______ _     ____ ___  __  __ _____   _____ ___    ___ _____ _____ 
\ \      / / ____| |   / ___/ _ \|  \/  | ____| |_   _/ _ \  |_ _|_   _|_   _|
 \ \ /\ / /|  _| | |  | |  | | | | |\/| |  _|     | || | | |  | |  | |   | |  
  \ V  V / | |___| |__| |__| |_| | |  | | |___    | || |_| |  | |  | |   | |  
   \_/\_/  |_____|_____\____\___/|_|  |_|_____|   |_| \___/  |___| |_|   |_|  
" -ForegroundColor White             
Write-Host "Chocolatey is not installed, installing now" -ForegroundColor red             
        
        Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1')) -ErrorAction Stop
        powershell choco feature enable -n allowGlobalConfirmation
    }
    Catch {
        Write-Host "--Chocolatey failed to install---"
    }
}
